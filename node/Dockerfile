FROM ethereum/client-go:alltools-latest

WORKDIR "/root"

ARG password
ARG privatekey
RUN echo $password > ~/.accountpassword
RUN echo $privatekey > ~/.privatekey
ADD ./genesis.json .
RUN geth init genesis.json

ENV bootnodeId=""
ENV bootnodeIp=""

EXPOSE 30305

CMD exec geth --bootnodes "enode://$bootnodeId@$bootnodeIp:30305" --networkid="6660001" --rpc --rpcaddr="0.0.0.0" --rpcapi="eth,web3,net,admin,debug" --rpccorsdomain="*" --rpcvhosts="*" --syncmode="full" --nousb --graphql --graphql.addr="0.0.0.0" --graphql.corsdomain="*" --graphql.vhosts="*" --ws --wsaddr="0.0.0.0" --wsapi="eth,web3,net" --wsorigins="*"  --nat "none"

EXPOSE 8545
EXPOSE 30303
