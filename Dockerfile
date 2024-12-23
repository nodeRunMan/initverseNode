FROM ubuntu:24.04

# Install necessary packages
RUN apt-get update \
    && apt-get install -y wget unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Download iniminer executable
RUN wget -O iniminer.sh https://raw.githubusercontent.com/sdohuajia/Iniminer/refs/heads/main/iniminer.sh && sed -i 's/\r//' iniminer.sh && chmod +x iniminer.sh


# Start the miner directly
CMD ["bash", "-c", "echo Container is running... && tail -f /dev/null"]