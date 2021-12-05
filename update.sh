mcVersion=1.16.4

latestBuild=$(curl https://papermc.io/api/v2/projects/paper/versions/$mcVersion | jq -r .builds[-1])
buildBin=$(curl https://papermc.io/api/v2/projects/paper/versions/$mcVersion/builds/$lastBuild | jq -r .downloads.application.name)
wget --output-document=paper.jar https://papermc.io/api/v2/projects/paper/versions/1.18/builds/$lastBuild/downloads/$buildBin

sudo mv paper.jar /opt/minecraft/survival
sudo systemctl restart minecraft@survival
