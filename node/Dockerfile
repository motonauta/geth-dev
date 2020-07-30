FROM ethereum/client-go:alltools-stable

WORKDIR "/root"

ARG password
ARG privatekey
RUN echo $password > ~/.accountpassword
RUN echo $privatekey > ~/.privatekey
ADD ./genesis.json .
RUN geth init genesis.json
RUN geth account import --password ~/.accountpassword  ~/.privatekey

ENV address=""
ENV bootnodeId=""
ENV bootnodeIp=""

CMD exec geth --bootnodes "enode://$bootnodeId@$bootnodeIp:30301" --networkid "6660001" --verbosity=4 --rpc --rpcaddr "0.0.0.0" --rpcapi "eth,web3,net,admin,debug" --rpccorsdomain "*" --syncmode="full" --nousb --graphql --graphql.addr="0.0.0.0" --graphql.corsdomain="*" --graphql.vhosts="*"  --nat extip:`hostname -i`

EXPOSE 8545
EXPOSE 30303
