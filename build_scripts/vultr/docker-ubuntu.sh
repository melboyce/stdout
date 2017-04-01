apt -y update
apt -y upgrade
apt -y install apt-transport-https ca-certificates curl gnupg

echo "deb https://apt.dockerproject.org/repo ubuntu-`lsb_release -cs` main" > /etc/apt/sources.list.d/docker.list
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
apt -y update
apt -y install docker-engine
