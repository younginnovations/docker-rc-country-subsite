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

### INSTALL DOCKER-COMPOSE
Compose is a tool for defining and running multi-container Docker applications. With Compose, we use a Compose file to configure your application’s services. Then, using a single command ( docker-compose up ), we create and start all the services from your configuration.

```
sudo -i 
curl -L https://github.com/docker/compose/releases/download/1.5.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
Test the installation using 
docker-compose --version
```

### RUNNING THE CONTAINER

To run the rc-country container follow the following steps :
```
git clone -b alpine-phpfpm-nginx-dockercompose git@gitlab.yipl.com.np:web-apps/docker-rc-country-subsite.git
cd docker-rc-country-subsite
mv .env.example .env
Edit .env file according to requirements
./build.sh

```
## configuration
### color

while running the script the script will prompt user for primary and secondary color.The primary color is the main color of the site.It is used for headings and $
NOTE: The color does not changes if we run the script more than once .This is due to the problem that docker-compose would not rebuild the container again.Instead it will take from the cache.To solve this problem,before running the script the user have to follow the following instructions.
```
docker-compose build --no-cache
./build.sh

```
 
![] (https://s3-ap-southeast-1.amazonaws.com/uploads-ap.hipchat.com/140261/2281647/tjNqXWfJGP7sz2K/country.png)
### Homepage Image
* Initially Default Image for the country site is displayed.
* You can change the image by visiting the URI:
        * `/admin` (Login providing the credentials).
        * Click Manage Image
        * Choose new image and upload it.

### .env
* Provide the followind details in the .env file like:
        * Database Host
        * Database Name
        * Database Username
        * Database Password
        * Country Code


