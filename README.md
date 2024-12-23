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
./iniminer-linux-x64 --pool stratum+tcp://<YOUR_WALLET_ADDRESS>.Worker001@pool-core-testnet.inichain.com:32672 --cpu-devices 1 --cpu-devices 2
```