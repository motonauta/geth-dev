FROM ethereum/client-go:alltools-stable

WORKDIR "/root"

ENV nodekeyhex=""

EXPOSE 30305

CMD exec bootnode -nodekeyhex $nodekeyhex -verbosity 9 -addr :30305