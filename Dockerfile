FROM ubuntu:24.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update and install necessary dependencies
RUN apt-get update && apt-get install -y \
    wget \
    screen \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Download the miner executable
RUN wget https://github.com/Project-InitVerse/ini-miner/releases/download/v1.0.0/iniminer-linux-x64 \
    && chmod +x iniminer-linux-x64

# Set the wallet address as an environment variable
ENV WALLET_ADDRESS=0x8ff44C9b5Eab5E5CE8d1d642184b70e9b9587F74

# Generate a unique worker name using the container hostname
ENV WORKER_NAME=$(hostname)

# Expose the default mining port
EXPOSE 32672

# Start the miner with the appropriate parameters
CMD ["./iniminer-linux-x64", "--pool", "stratum+tcp://${WALLET_ADDRESS}.${WORKER_NAME}@pool-core-testnet.inichain.com:32672", "--cpu-devices", "1", "--cpu-devices", "2"]