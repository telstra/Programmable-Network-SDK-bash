FROM ubuntu:16.10

RUN apt-get update -y && apt-get full-upgrade -y
RUN apt-get install -y bash-completion zsh curl cowsay git vim bsdmainutils

ADD TelstraTPN /usr/bin/TelstraTPN
ADD _TelstraTPN /usr/local/share/zsh/site-functions/_TelstraTPN
ADD TelstraTPN.bash-completion /etc/bash-completion.d/TelstraTPN
RUN chmod 755 /usr/bin/TelstraTPN

#
# Install oh-my-zsh
#
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true

#
# Enable bash completion
#
RUN echo '\n\
. /etc/bash_completion\n\
source /etc/bash-completion.d/TelstraTPN\n\
' >> ~/.bashrc

#
# Setup prompt
#
RUN echo 'export PS1="[Telstra Programmable Network API] \$ "' >> ~/.bashrc
RUN echo 'export PROMPT="[Telstra Programmable Network API] \$ "' >> ~/.zshrc

#
# Setup a welcome message with basic instruction
#
RUN echo 'cat << EOF\n\
\n\
This Docker provides preconfigured environment for running the command\n\
line REST client for $(tput setaf 6)Telstra Programmable Network API$(tput sgr0).\n\
\n\
For convenience, you can export the following environment variables:\n\
\n\

\n\
$(tput setaf 7)Basic usage:$(tput sgr0)\n\
\n\
$(tput setaf 3)Print the list of operations available on the service$(tput sgr0)\n\
$ TelstraTPN -h\n\
\n\
$(tput setaf 3)Print the service description$(tput sgr0)\n\
$ TelstraTPN --about\n\
\n\
$(tput setaf 3)Print detailed information about specific operation$(tput sgr0)\n\
$ TelstraTPN <operationId> -h\n\
\n\
By default you are logged into Zsh with full autocompletion for your REST API,\n\
but you can switch to Bash, where basic autocompletion is also supported.\n\
\n\
EOF\n\
' | tee -a ~/.bashrc ~/.zshrc

ENTRYPOINT ["zsh"]
