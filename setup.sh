sudo adduser -s /sbin/nologin minecraft
sudo groupadd minecraft
sudo usermod -a -G minecraft minecraft
sudo mkdir -p /opt/minecraft/survival
sudo chown -R minecraft:minecraft /opt/minecraft/survival

wget --output-document=paper.jar https://papermc.io/api/v1/paper/1.16.4/latest/download
sudo mv paper.jar /opt/minecraft/survival
sudo cp minecraft@.service /etc/systemd/system
sudo systemctl enable --now minecraft@survival
