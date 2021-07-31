sudo groupadd minecraft
sudo useradd -g minecraft -s /sbin/nologin minecraft
sudo usermod -a -G minecraft minecraft
sudo mkdir -p /opt/minecraft/survival
sudo chown -R minecraft:minecraft /opt/minecraft/survival

wget --output-document=paper.jar https://papermc.io/api/v1/paper/1.17.1/latest/download
sudo mv paper.jar /opt/minecraft/survival
sudo cp minecraft@.service /etc/systemd/system
sudo systemctl enable --now minecraft@survival
