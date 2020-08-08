#!/bin/sh

geth init genesis.json
geth --bootnodes "enode://$bootnodeId@$bootnodeIp:30305" --networkid "6660001" --syncmode=full --mine --gasprice "0" --etherbase $address --unlock $address --password ~/.accountpassword --nousb --nat "none"