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

### RUNNING THE CONTAINER

To run the rc-country container follow the following steps :
```
git clone git@gitlab.yipl.com.np:web-apps/docker-rc-country-subsite.git
cd docker-rc-country-subsite
mv .env.example .env
Edit .env file according to requirements
./build.sh

```
## configuration
### color
while running the script the script will prompt user for primary and secondary color.The primary color is the main color of the site.It is used for headings and links .The secondary color is used for backgrounds and buttons.The default primary color is #17A9A8 and the default secondary color is #0B9C9B .If the user does not wants to change the default primary and secondary color they could simply press ENTER button.

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


