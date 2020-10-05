#!/bin/sh

geth init genesis.json
geth --syncmode "full" --gcmode "archive" --bootnodes "enode://$bootnodeId@$bootnodeIp:30305" --networkid="6660001" --rpc --rpcaddr="0.0.0.0" --rpcapi="eth,web3,net,admin,debug,txpool" --rpccorsdomain="*" --rpcvhosts="*" --syncmode="full" --nousb --graphql --graphql.corsdomain="*" --graphql.vhosts="*" --ws --wsaddr="0.0.0.0" --wsapi="eth,web3,net" --wsorigins="*"  --nat "none"