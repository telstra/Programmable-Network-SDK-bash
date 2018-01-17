# Telstra Programmable Network 

## Overview
This is a Bash client script for accessing Telstra Programmable Network API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x TelstraTPN

# Print the list of operations available on the service
$ ./TelstraTPN -h

# Print the service description
$ ./TelstraTPN --about

# Print detailed information about specific operation
$ ./TelstraTPN <operationId> -h

# Make GET request
./TelstraTPN --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
TelstraTPN -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' | TelstraTPN --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' | TelstraTPN --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Preview the cURL command without actually executing it
$ TelstraTPN --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image
You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash
The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source TelstraTPN.bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp TelstraTPN.bash-completion /etc/bash-completion.d/TelstraTPN
```

#### OS X
On OSX you might need to install bash-completion using Homebrew:
```shell
brew install bash-completion
```
and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh
In Zsh, the generated `_TelstraTPN` Zsh completion file must be copied to one of the folders under `$FPATH` variable.


## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthenticationApi* | [**authGeneratetokenPost**](docs/AuthenticationApi.md#authgeneratetokenpost) | **POST** /1.0.0/auth/generatetoken | Create an authentication token
*AuthenticationApi* | [**authValidatetokenGet**](docs/AuthenticationApi.md#authvalidatetokenget) | **GET** /1.0.0/auth/validatetoken | Validate authentication token
*ContractsApi* | [**inventoryLinksContractByLinkidAndContractidGet**](docs/ContractsApi.md#inventorylinkscontractbylinkidandcontractidget) | **GET** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Get active Contract by ContractID
*ContractsApi* | [**inventoryLinksContractByLinkidAndContractidPut**](docs/ContractsApi.md#inventorylinkscontractbylinkidandcontractidput) | **PUT** /1.0.0/inventory/links/{linkid}/contract/{contractid} | Update active Contract by ContractID
*ContractsApi* | [**inventoryLinksContractByLinkidPost**](docs/ContractsApi.md#inventorylinkscontractbylinkidpost) | **POST** /1.0.0/inventory/links/{linkid}/contract | Create new Contract on specified link
*CustomersApi* | [**accountByCustomeruuidGet**](docs/CustomersApi.md#accountbycustomeruuidget) | **GET** /1.0.0/account/{customeruuid} | Get account information details
*CustomersApi* | [**accountUserByCustomeruuidGet**](docs/CustomersApi.md#accountuserbycustomeruuidget) | **GET** /1.0.0/account/{customeruuid}/user | List users
*DatacentresApi* | [**inventoryDatacentersGet**](docs/DatacentresApi.md#inventorydatacentersget) | **GET** /1.0.0/inventory/datacenters | Get list of all the data centers
*EndpointsApi* | [**eis100EndpointsAssignTopologyTagByEndpointuuidPost**](docs/EndpointsApi.md#eis100endpointsassigntopologytagbyendpointuuidpost) | **POST** /eis/1.0.0/endpoints/{endpointuuid}/assign_topology_tag | Assign a Topology Tag to an Endpoint
*EndpointsApi* | [**inventoryEndpointByEndpointuuidGet**](docs/EndpointsApi.md#inventoryendpointbyendpointuuidget) | **GET** /1.0.0/inventory/endpoint/{endpointuuid} | Get information about the specified endpoint
*EndpointsApi* | [**inventoryEndpointsCustomeruuidByCustomeruuidGet**](docs/EndpointsApi.md#inventoryendpointscustomeruuidbycustomeruuidget) | **GET** /1.0.0/inventory/endpoints/customeruuid/{customeruuid} | Get list of endpoints for a customer
*EndpointsApi* | [**inventoryRegularendpointPost**](docs/EndpointsApi.md#inventoryregularendpointpost) | **POST** /1.0.0/inventory/regularendpoint | Create Physical (Port) Endpoint
*EndpointsApi* | [**inventoryVnfendpointPost**](docs/EndpointsApi.md#inventoryvnfendpointpost) | **POST** /1.0.0/inventory/vnfendpoint | Create VNF Endpoint
*LinksApi* | [**inventoryLinkPost**](docs/LinksApi.md#inventorylinkpost) | **POST** /1.0.0/inventory/link | Create Link and initial Contract
*LinksApi* | [**inventoryLinksByLinkidGet**](docs/LinksApi.md#inventorylinksbylinkidget) | **GET** /1.0.0/inventory/links/{linkid} | Get details of specified link
*LinksApi* | [**inventoryLinksCustomerByCustomeruuidGet**](docs/LinksApi.md#inventorylinkscustomerbycustomeruuidget) | **GET** /1.0.0/inventory/links/customer/{customeruuid} | Get active Links
*LinksApi* | [**inventoryLinksHistoryByLinkidGet**](docs/LinksApi.md#inventorylinkshistorybylinkidget) | **GET** /1.0.0/inventory/links/history/{linkid} | Get Link history
*TopologiesApi* | [**ttms100TopologyTagByTopotaguuidDelete**](docs/TopologiesApi.md#ttms100topologytagbytopotaguuiddelete) | **DELETE** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Delete a topology tag
*TopologiesApi* | [**ttms100TopologyTagByTopotaguuidGet**](docs/TopologiesApi.md#ttms100topologytagbytopotaguuidget) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Get information about the specified topology tag
*TopologiesApi* | [**ttms100TopologyTagByTopotaguuidPut**](docs/TopologiesApi.md#ttms100topologytagbytopotaguuidput) | **PUT** /ttms/1.0.0/topology_tag/{topotaguuid}/ | Update a topology tag&#39;s name and/or description
*TopologiesApi* | [**ttms100TopologyTagGet**](docs/TopologiesApi.md#ttms100topologytagget) | **GET** /ttms/1.0.0/topology_tag | List all topology tags
*TopologiesApi* | [**ttms100TopologyTagObjectsByTopotaguuidGet**](docs/TopologiesApi.md#ttms100topologytagobjectsbytopotaguuidget) | **GET** /ttms/1.0.0/topology_tag/{topotaguuid}/objects/ | List objects for Topology
*TopologiesApi* | [**ttms100TopologyTagPost**](docs/TopologiesApi.md#ttms100topologytagpost) | **POST** /ttms/1.0.0/topology_tag | Create a named topology tag
*VnfsApi* | [**marketplaceImageGet**](docs/VnfsApi.md#marketplaceimageget) | **GET** /1.0.0/marketplace/image | List images in the Marketplace
*VportsApi* | [**inventoryRegularvportPost**](docs/VportsApi.md#inventoryregularvportpost) | **POST** /1.0.0/inventory/regularvport | Create VPort for physical endpoint
*VportsApi* | [**inventoryVnfVportPost**](docs/VportsApi.md#inventoryvnfvportpost) | **POST** /1.0.0/inventory/vnf/vport | Create VNF VPort
*VportsApi* | [**inventoryVportByVportuuidGet**](docs/VportsApi.md#inventoryvportbyvportuuidget) | **GET** /1.0.0/inventory/vport/{vportuuid} | Get information about the specified VPort


## Documentation For Models

 - [AccountResponse](docs/AccountResponse.md)
 - [AuthGeneratetokenResponse](docs/AuthGeneratetokenResponse.md)
 - [AuthValidatetokenResponse](docs/AuthValidatetokenResponse.md)
 - [Billing](docs/Billing.md)
 - [Classification](docs/Classification.md)
 - [Contract](docs/Contract.md)
 - [Datacenter](docs/Datacenter.md)
 - [Eis100EndpointsAssignTopologyTagRequest](docs/Eis100EndpointsAssignTopologyTagRequest.md)
 - [Endpoint](docs/Endpoint.md)
 - [EndpointPort](docs/EndpointPort.md)
 - [Endpointlist](docs/Endpointlist.md)
 - [Error](docs/Error.md)
 - [Error74](docs/Error74.md)
 - [Flavor](docs/Flavor.md)
 - [GlanceImage](docs/GlanceImage.md)
 - [InventoryDatacenters401Error](docs/InventoryDatacenters401Error.md)
 - [InventoryDatacentersResponse](docs/InventoryDatacentersResponse.md)
 - [InventoryEndpointResponse](docs/InventoryEndpointResponse.md)
 - [InventoryEndpointsCustomeruuidResponse](docs/InventoryEndpointsCustomeruuidResponse.md)
 - [InventoryLinkRequest](docs/InventoryLinkRequest.md)
 - [InventoryLinkResponse](docs/InventoryLinkResponse.md)
 - [InventoryLinksContractRequest](docs/InventoryLinksContractRequest.md)
 - [InventoryLinksContractRequest37](docs/InventoryLinksContractRequest37.md)
 - [InventoryLinksContractResponse](docs/InventoryLinksContractResponse.md)
 - [InventoryLinksContractResponse33](docs/InventoryLinksContractResponse33.md)
 - [InventoryLinksContractResponse38](docs/InventoryLinksContractResponse38.md)
 - [InventoryLinksHistoryResponse](docs/InventoryLinksHistoryResponse.md)
 - [InventoryLinksResponse](docs/InventoryLinksResponse.md)
 - [InventoryRegularendpointRequest](docs/InventoryRegularendpointRequest.md)
 - [InventoryRegularendpointResponse](docs/InventoryRegularendpointResponse.md)
 - [InventoryRegularvportRequest](docs/InventoryRegularvportRequest.md)
 - [InventoryRegularvportResponse](docs/InventoryRegularvportResponse.md)
 - [InventoryVnfVportRequest](docs/InventoryVnfVportRequest.md)
 - [InventoryVnfVportResponse](docs/InventoryVnfVportResponse.md)
 - [InventoryVnfendpointRequest](docs/InventoryVnfendpointRequest.md)
 - [InventoryVnfendpointResponse](docs/InventoryVnfendpointResponse.md)
 - [Link](docs/Link.md)
 - [Link66](docs/Link66.md)
 - [MarketplaceImageResponse](docs/MarketplaceImageResponse.md)
 - [Meta](docs/Meta.md)
 - [Object52](docs/Object52.md)
 - [Params](docs/Params.md)
 - [Params31](docs/Params31.md)
 - [Params34](docs/Params34.md)
 - [Params39](docs/Params39.md)
 - [Product](docs/Product.md)
 - [Role](docs/Role.md)
 - [SuccessFragment](docs/SuccessFragment.md)
 - [Topology](docs/Topology.md)
 - [Ttms100TopologyTagObjectsResponse](docs/Ttms100TopologyTagObjectsResponse.md)
 - [Ttms100TopologyTagRequest](docs/Ttms100TopologyTagRequest.md)
 - [User](docs/User.md)
 - [Vlan](docs/Vlan.md)
 - [VnfTag](docs/VnfTag.md)
 - [Vport](docs/Vport.md)
 - [Vportvalue](docs/Vportvalue.md)


## Documentation For Authorization


## auth

- **Type**: OAuth
- **Flow**: password
- **Token URL**: https://penapi.pacnetconnect.com/1.0.0/auth/generatetoken
- **Scopes**:
  - **Oauth2**: Oauth2

