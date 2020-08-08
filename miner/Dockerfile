FROM ethereum/client-go:alltools-stable

WORKDIR "/root"

ARG password
ARG privatekey

ADD ./genesis.json .
RUN geth init genesis.json

RUN echo $password > .accountpassword
RUN echo $privatekey > .privatekey
RUN geth account import --password .accountpassword  .privatekey --nousb

ENV address=""
ENV bootnodeId=""
ENV bootnodeIp=""

ADD ./start.sh .
CMD ./start.sh

EXPOSE 30305