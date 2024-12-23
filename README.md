# initverseNode
initverse节点运行

## 基本信息
[官网](https://candy.inichain.com?invite=3B3RRB039DG8FHA7Z1DDIV6OB)
[测试领水](https://faucet-testnet.iniscan.com/)

## 节点运行
```shell
wget https://github.com/Project-InitVerse/ini-miner/releases/download/v1.0.0/iniminer-linux-x64

chmod +x iniminer-linux-x64

screen -S initverse-miner

# --cpu-devices 1 --cpu-devices 2
./iniminer-linux-x64 --./iniminer-linux-x64 --pool stratum+tcp://0x0304f5193FCe6A27e3789c27EE2B9D95177e21A5.Worker001@pool-core-testnet.inichain.com:32672 stratum+tcp://0x0304f5193FCe6A27e3789c27EE2B9D95177e21A5.Worker001@pool-core-testnet.inichain.com:32672
```

```shell
docker build -t iniminer .

docker run -it --name iniminer-container iniminer

```