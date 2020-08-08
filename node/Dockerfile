FROM ethereum/client-go:alltools-latest

WORKDIR "/root"

ENV bootnodeId=""
ENV bootnodeIp=""

ADD ./genesis.json .

ADD ./start.sh .
CMD ./start.sh

EXPOSE 30305
EXPOSE 30303
EXPOSE 8545