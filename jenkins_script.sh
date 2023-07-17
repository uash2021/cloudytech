#### Script to install Jenkins on Ubuntu Server ####

### Pre-requisite - Java should be installed ###

echo "Updating system packages indexes"

sudo apt-get update

echo "Installing Java"

sudo apt install openjdk-11-jdk -y

echo "Installing git"

sudo apt install git -y 

echo "installing jenkins"

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

sudo apt-get install jenkins -y

systemctl enable jenkins

systemctl start jenkins





