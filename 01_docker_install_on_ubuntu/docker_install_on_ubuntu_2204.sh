# vim docker.sh

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y

echo "\n"
sudo systemctl status docker | grep Active -B2 -A8
sudo usermod -aG docker ${USER}  

sudo apt install python3-pip -y
sudo pip3 install docker-compose

echo "\n==============="
sudo docker version
echo "\n"
sudo docker-compose version

# execute /bin/bash docker.sh
# now relogin putty/terminal new session