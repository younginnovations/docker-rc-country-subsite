## Resource Contract - Country site


### INSTALL DOCKER

### For debian based system:

```
sudo apt-get install docker.io
sudo usermod -aG docker $USER
sudo reboot

```
### For CentOS

```
sudo yum install docker-engine
sudo service docker start

```

### INSTALL docker-compose
```
curl -L https://github.com/docker/compose/releases/download/1.5.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
Test the installation using 
docker-compose --version

``` 



### RUNNING THE CONTAINER

To run the rc-country container follow the following steps:
```
git clone git@gitlab.yipl.com.np:web-apps/docker-rc-country-subsite.git
cd docker-rc-country-subsite
mv .env.example .env
Edit .env file according to requirements
./build.sh

```

