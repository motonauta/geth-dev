FROM ethereum/client-go:alltools-stable

WORKDIR "/root"

ARG password
ARG privatekey
RUN echo $password > .accountpassword
RUN echo $privatekey > .privatekey
ADD ./genesis.json .
RUN geth init genesis.json
RUN geth account import --password .accountpassword  .privatekey --nousb

ENV address=""
ENV bootnodeId=""
ENV bootnodeIp=""

EXPOSE 30305

CMD exec geth --bootnodes "enode://$bootnodeId@$bootnodeIp:30305" --networkid "6660001" --syncmode=full --mine --gasprice "0" --etherbase $address --unlock $address --password ~/.accountpassword --nousb --nat "none"
