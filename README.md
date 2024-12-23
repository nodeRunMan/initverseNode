# initverseNode
initverse节点运行

```shell
0x8ff44C9b5Eab5E5CE8d1d642184b70e9b9587F74
```

## 基本信息
[官网](https://candy.inichain.com?invite=3B3RRB039DG8FHA7Z1DDIV6OB)
[测试领水](https://faucet-testnet.iniscan.com/)
[矿池](https://genesis-testnet.yatespool.com/)

## 节点运行
```shell
wget https://github.com/Project-InitVerse/ini-miner/releases/download/v1.0.0/iniminer-linux-x64

chmod +x iniminer-linux-x64

# --cpu-devices 1 --cpu-devices 2
./iniminer-linux-x64 --./iniminer-linux-x64 --pool stratum+tcp://0x8ff44C9b5Eab5E5CE8d1d642184b70e9b9587F74.Worker001@pool-core-testnet.inichain.com:32672 stratum+tcp://0x0304f5193FCe6A27e3789c27EE2B9D95177e21A5.Worker001@pool-core-testnet.inichain.com:32672

```

```shell
docker build -t iniminer .

docker run -it --name iniminer-container iniminer


docker run -d ubuntu:24.04 tail -f /dev/null

```

```shell

./iniminer-linux-x64 --pool stratum+tcp://0x8ff44C9b5Eab5E5CE8d1d642184b70e9b9587F74.Worker001@pool-core-testnet.inichain.com:32672

```

## 第三方脚本
[源贴](https://medium.com/@fengjinghua68/initverse-%E6%8C%96%E7%9F%BF%E8%84%9A%E6%9C%AC%E4%B8%80%E9%94%AE%E9%83%A8%E7%BD%B2%E6%8C%87%E5%8D%97-74750503cc83)
```shell
wget -O iniminer.sh https://raw.githubusercontent.com/sdohuajia/Iniminer/refs/heads/main/iniminer.sh && sed -i 's/\r//' iniminer.sh && chmod +x iniminer.sh && ./iniminer.sh
```

mac脚本
```shell
wget -O iniminer-mac.sh https://raw.githubusercontent.com/sdohuajia/Iniminer/refs/heads/main/iniminer-mac.sh && sed -i 's/\r//' iniminer-mac.sh && chmod +x iniminer-mac.sh && ./iniminer-mac.sh
```