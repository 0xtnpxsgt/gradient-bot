#!/bin/bash

# Step 1: Clone the repository
echo "Cloning the repository..."
git clone https://github.com/0xtnpxsgt/gradient-bot.git
cd gradient-bot || { echo "Failed to enter the directory"; exit 1; }

# Step 2: Set up the first proxy file
echo "Setting up the proxies file (proxies1.txt)..."
read -p "Enter proxy format for proxies1.txt (e.g., socks5://username:password@proxyhost:port): " proxy1
echo "$proxy1" > proxies1.txt

# Step 3: Prompt for Docker environment variables
read -p "Enter your APP_USER (email): " app_user
read -sp "Enter your APP_PASS (password): " app_pass
echo

# Step 4: Run the first Docker container
echo "Running the Docker container with proxies1.txt..."
docker run -d \
  -e APP_USER="$app_user" \
  -e APP_PASS="$app_pass" \
  -v "$PWD/proxies1.txt:/app/proxies.txt" \
  overtrue/gradient-bot

# Step 5: Loop to add more containers with new proxies files if the user wants
counter=2
while true; do
  read -p "Do you want to run another Docker container with a new proxy file (proxies${counter}.txt)? (y/n): " run_new

  if [[ "$run_new" =~ ^[Yy]$ ]]; then
    # Set up the next proxy file
    echo "Setting up proxies${counter}.txt..."
    read -p "Enter proxy format for proxies${counter}.txt (e.g., socks5://username:password@proxyhost:port): " proxy
    echo "$proxy" > "proxies${counter}.txt"

    # Run the next Docker container with the new proxies file mapped to /app/proxies.txt
    echo "Running the Docker container with proxies${counter}.txt..."
    docker run -d \
      -e APP_USER="$app_user" \
      -e APP_PASS="$app_pass" \
      -v "$PWD/proxies${counter}.txt:/app/proxies.txt" \
      overtrue/gradient-bot

    echo "Docker container with proxies${counter}.txt is now running."

    # Increment counter for the next proxy file
    ((counter++))
  else
    echo "Setup complete. No more Docker containers will be started."
    break
  fi
done
