#!/bin/bash

# Step 1: Clone the repository
echo "Cloning the repository..."
git clone https://github.com/0xtnpxsgt/gradient-bot.git
cd gradient-bot || { echo "Failed to enter the directory"; exit 1; }

# Step 2: Set up the proxy file
echo "Setting up the proxies file (proxies1.txt)..."
read -p "Enter proxy format (e.g., socks5://username:password@proxyhost:port): " proxy
echo "$proxy" > proxies1.txt

# Step 3: Prompt for Docker environment variables
read -p "Enter your APP_USER (email): " app_user
read -sp "Enter your APP_PASS (password): " app_pass
echo

# Step 4: Run the Docker container
echo "Running the Docker container..."
docker run -d \
  -e APP_USER="$app_user" \
  -e APP_PASS="$app_pass" \
  -v "$PWD/proxies1.txt:/app/proxies1.txt" \
  overtrue/gradient-bot

echo "Installation complete. The Docker container is now running."
