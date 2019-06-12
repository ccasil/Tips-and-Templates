# Angular Deployment

## MEAN Deployment using Amazon EC2

### 0. Requirements  

* AWS account
* GitHub account / project repository

### 1. Set Up AWS  

1. Enter Amazon EC2 and launch a new instance  
2. Select Ubuntu Server 18.04 LTS (HVM), SSD Volume Type
3. Select t2.micro
4. Set security settings:  
    ssh 0.0.0.0 (Anywhere or myIP)  
    http 0.0.0.0 (Anywhere)  
    https 0.0.0.0 (Anywhere, or don't set it)  
5. Download a .pem key from AWS or use an existing key
6. Move the .pem file to an appropriate folder on your system
7. From the folder containing your .pem file, change its user permission with this command: `chmod 400 {{file_name}}.pem`

### 2. Enter the Cloud Server

1. Navigate to the directory where your .pem file is located
2. Copy the command to SSH into your EC2 instance by clicking the __Connect__ button on AWS  
    `ssh -i {{mypem}}.pem ubuntu@{{yourAWS.ip}}`
3. From your .pem key directory, run the command you copied from AWS to SSH into your EC2 instance
4. When prompted, type `yes`

### 3. Install Dependencies

1. In the Ubuntu terminal:  
    (note: these establish basic dependencies for deployment and the Linux server)  
    `sudo apt-get update`  
    `sudo apt-get install -y build-essential openssl libssl-dev pkg-config`  
2. Install basic node & npm, and clean the cache  
    `sudo apt-get install -y nodejs nodejs-legacy`  
    `sudo apt-get install npm -y`  
    `sudo npm cache clean -f`  
    (note: If node does not install properly, use `sudo apt install nodejs-legacy` or `sudo apt install nodejs`)  
    (`node -v` to check node version)
3. Install the node package manager __n__ and updated node  
    `sudo npm install -g n`  
    `sudo n stable`
4. Install Angular CLI  
    `sudo npm install -g @angular/cli`
5. Install NGINX and git  
    `sudo apt-get install nginx git -y`

### 4. Clone your Project

1. Navigate to /var/www  
    (note: If /var/www does not exist, run sudo mkdir /var/www then change into its directory)
2. Clone your project  
    `sudo git clone {{project file path on GitHub}}`

### 5. Set up NGINX

1. Enter nginx's sites-available directory  
    `cd /etc/nginx/sites-available`
2. Create a file using [vim](Vim.md) and name it after cloned repo  
    `sudo vim {{your cloned repo's name}}`
3. Add the following code to the file you just made, changing the two placeholders  
    ```JavaScript
    server {
        listen 80;
        location / {
            proxy_pass http://{{PRIVATE-IP}}:{{NODE-PROJECT-PORT}};
            proxy_http_version 1.1;
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection 'upgrade';
            proxy_set_header Host $host;
            proxy_cache_bypass $http_upgrade;
        }
    }
    ```
4. Remove the default from nginx's sites-available directory  
    `sudo rm default`
5. Create a symbolic link from sites-enabled to sites-available  
    `sudo ln -s /etc/nginx/sites-available/{{repo name}} /etc/nginx/sites-enabled/{{repo name}}`  
6. Remove the default from nginx's sites-enabled directory (/etc/nginx/sites-enabled)  
    `sudo rm /etc/nginx/sites-enabled/default`

### 6. Project Dependencies and pm2

1. Install pm2 (production manager which allows us to run node processes in the background) globally  
    `sudo npm install pm2 -g`
    * __pm2 tests__  
        * `pm2 start server.js`  
        * `pm2 stop 0`  
        * `pm2 restart 0`  
        * `sudo service nginx reload && sudo service nginx restart`  
2. Navigate back to project and change permissions  
    `cd /var/www`  
    `sudo chown -R ubuntu {{repo name}}`  
3. Navigate back into project, install needed node modules, and build the dist folder  
    `cd {{repo name}}`  
    `npm install`  
    `cd {{angular project name, we usually call it public (or client)}}`  
    `npm install`  
    `ng build`  

### 7. MongoDB

* [MongoDB on Ubuntu](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)

1. Import GPG key  
    (note: Check link above for the most updated key)  
    `sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4`  
2. Define where to download the packages  
    `echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list`
3. Re-update to integrate Mongo  
    `sudo apt-get update`  
4. Install MongoDB  
    `sudo apt-get install -y mongodb-org`
5. Create /data/db  
    `sudo mkdir /data`  
    `sudo mkdir /data/db`  
6. Start MongoDB  
    `sudo service mongod start`
7. Check status of service (use ctrl+c to end process)  
    `sudo service mongod status`  
8. Automatically start Mongo when the system starts  
    `sudo systemctl enable mongod && sudo systemctl start mongod`

### 8. Start Server

1. Navigate to project  
    `cd /var/www/{{repo name}}`
2. Start pm2 project  
    `pm2 start server.js`
3. Restart nginx  
    `sudo service nginx stop && sudo service nginx start`

#### Closing Commands

* `pm2 logs`: see logs of your different pm2 instances
* `pm2 show {{pm2 instance id}}` will give you details of that instance

#### Restart pm2 project

`pm2 stop 0`  
`pm2 restart 0`  
`sudo service nginx reload && sudo service nginx restart`  

### __Update Deployed Project__

1. Go to EC2 console and check which instance is running; SSH into it  
    `ssh -i {{mypem}}.pem ubuntu@ec2-54-67-21-6.us-west-1.compute.amazonaws.com`
2. Pull from git repository located in /var/www  
    `cd /var/www` then `git pull`
3. In project directory (main and Angular folders) install node_modules  
    `npm install`  
4. Build project  
    `sudo ng build`  
5. Reload and restart nginx  
    `sudo service nginx reload && sudo service nginx restart`  
6. Check AWS and go to public IP to see new updated version of web application


### __Replace Deployed Project__

1. Go to EC2 console and check which instance is running; SSH into it  
    `ssh -i {{mypem}}.pem ubuntu@ec2-54-67-21-6.us-west-1.compute.amazonaws.com`
2. Check if nginx is running  
    `sudo service nginx status`  
3. Check if pm2 is running server.js file  
    `sudo pm2 status`  
4. Check if project was cloned properly  
    `cd /var/www`
5. Remove old version of project (or old project you want to replace)  
    `sudo rm -rf {{project name}}`  
6. Clone current __new__ version of project  
    `sudo git clone {{project file path on GitHub}}`  
7. In project directory (main and Angular folders) install node_modules  
    `npm install`  
8. Check if Angular CLI is installed globally  
    `ng -v`  
9. Build project  
    `sudo ng build`  
10. Check status and delete server  
    `sudo pm2 status`  
    `pm2 delete server`  
11. Navigate to main project folder  
    `pm2 start server`  
12. Check pm2 status  
    `sudo pm2 status`  
13. Check port of project (server.js) to see if it matches in nginx files  
    `cd etc/nginx/sites-available`  
    `sudo vim {{project name}}`  
14. Reload and restart nginx  
    `sudo service nginx reload && sudo service nginx restart`
15. Check AWS and go to public IP to see new updated version of web application

## Angular App Deployment to GitHub Pages

| Step | Description                             | Command                                                               |
| ---- | --------------------------------------- | --------------------------------------------------------------------- |
| 1    | Install angular-cli-ghpages globally    | `npm install -g angular-cli-ghpages`                                  |
| 2    | Build project and set correct base href | `ng build --prod --base-href "https://<user-name>.github.io/<repo>/"` |
| 3    | Run angular-cli-ghpages                 | `ngh`                                                                 |

## References

**[alligator.io](https://alligator.io/angular/deploying-angular-app-github-pages/)**
