#!/bin/bash

# Step 1: Clone the repository
echo "Cloning the repository..."
git clone https://github.com/0xtnpxsgt/gradient-bot.git
cd gradient-bot || { echo "Failed to enter the directory"; exit 1; }

# Step 2: Set up the proxies file
echo "Setting up the proxies file (proxies.txt)..."
echo "Enter multiple proxies, one per line. When done, press Ctrl+D:"
cat > proxies.txt

# Step 3: Prompt for Docker environment variables
read -p "Enter your APP_USER (email): " app_user
read -sp "Enter your APP_PASS (password): " app_pass
echo

# Step 4: Run the Docker container
echo "Running the Docker container with proxies.txt..."
docker run -d \
  -e APP_USER="$app_user" \
  -e APP_PASS="$app_pass" \
  -v "$PWD/proxies.txt:/app/proxies.txt" \
  overtrue/gradient-bot

echo "Docker container setup complete."
