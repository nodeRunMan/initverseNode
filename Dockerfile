FROM ubuntu:24.04
# Install necessary packages
RUN apt-get update \
    && apt-get install -y wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Download iniminer executable
RUN wget https://github.com/Project-InitVerse/ini-miner/releases/download/v1.0.0/iniminer-linux-x64 \
    && chmod +x iniminer-linux-x64

# Set wallet address and pool info as environment variables
ENV WALLET_ADDRESS=0x8ff44C9b5Eab5E5CE8d1d642184b70e9b9587F74
ENV POOL_URL=stratum+tcp://$WALLET_ADDRESS.Worker001@pool-core-testnet.inichain.com:32672

# Start the miner directly
CMD [\"./iniminer-linux-x64\", \"--pool\", \"stratum+tcp://0x8ff44C9b5Eab5E5CE8d1d642184b70e9b9587F74.Worker001@pool-core-testnet.inichain.com:32672\"]