# Local Ethereum PoA Network

The testnet consists out of multiple parts :
* 1 Bootnode - registers existing nodes on the network, discovery service.
* 2 Miners - Also called **sealers** with proof-of-authority. They validate the blocks. No RPC is exposed as they are required to be unlocked.
* 1 Node - This serves as **transaction relay** and is a fullnode that does not mine, is locked but has RPC exposed

## Usage
Setting up this networks requires you to install Docker. Clone the repository, and run `docker-compose up` from the repository root. The network should start and synchronize without any further configuration. The networks always uses the latest available versions of Ethereum and Swarm, the network is set up for clique proof-of-authority similar to the Ethereum Rinkeby testnet. For more information on clique POA see https://github.com/ethereum/EIPs/issues/225 .

## The bootnode
The nodes in the network are connecting with the bootnode. This is a special ethereum node, designed to provide a register of the existing nodes in the network. The parameter `nodekeyhex`in the `docker-compose.yml` is needed to derive the `enodeID` which is later passed to the other nodes. The IP needs to be fixed, as the other nodes need to know where to find the bootnode, and DNS is not supported. The bootnode does not participate in synchronization of state or mining.

## Miners / Geth Nodes
There are three nodes that participate in the network. The state is synchronized between them and they are trying to create blocks with mining. Initially they connect to the bootnode with the information derived from the fixed IP and the nodekeyhex. If you want to interact with the network, you need to connect via RPC. You can attach a geth instance, connect Remix IDE or connect your browser with web3 and build a ÐApp.

The RPC Ports of the nodes are mapped to your localhost, the addresses are:

* geth-dev-miner-1 : No RPC exposed
* geth-dev-miner-2: No RPC exposed
* geth-dev-node: [RPC http://localhost:8545](http://localhost:8545) and [GraphQL http://localhost:8547](http://localhost:8547)

https://geth.ethereum.org/docs/interface/command-line-options  
[How to add new Sealer in Geth 1.6 Proof of Authority?](https://ethereum.stackexchange.com/a/15779/51565)