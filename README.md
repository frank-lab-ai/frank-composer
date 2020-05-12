# README #


## What is this repository for? ###

* This repository contains the necessary scripts to setup up all the source code and components to run FRANK.


## How do I get set up? ###

### Clone repositories

Clone this repository. We assume that a directory called _frank_ exists. This repository and other FRANK-related repositories will be cloned.

Directory structure should look this:   
```
frank  
| 
└── frank-composer        
```

Run the ```init.sh``` script in frank-composer to clone the ```franky``` and ```frank-ui``` repositories.
```
$ ./init.sh -u <bitbucket-user-name>
```
or
```
$ source init.sh -u <bitbucket-user-name>
```
The script will clone the repositories into the parent directory of the frank-composer dir.   

Directory structure should now look this:   
```
frank  
| 
└── frank-composer  
| 
└── frank-ui
| 
└── franky      
```

### Create Docker Images and Launch Containers
From the ```frank-composer``` directory, run the ```start.sh``` script.
```
$ ./start.sh
```
This script uses ```docker-compose``` to create all the docker images and containers needed to run FRANK. These include:
* frank-api
* frank-ui
* mongodb
* redis
* neo4j

The mongodb will be seeded with data from
https://frankqa.s3-eu-west-1.amazonaws.com/public/mongo_frank_init.tar.gz.

To stop the containers, run the ```stop.sh``` script. You can restart the containers with the ```start.sh``` script.

The ```teardown.sh``` script stops the docker containers and removes all docker images built. It also removes any docker volumes for the databases which will result in the loss of data. __Use with caution!__

### Contribution guidelines ###

* Create branches for repositories that you want to make changes to.
* Commit changes to repo. Comment commits appropriately. Commit changes regularly. Follow best-pratices for using git.
* Create pull requests to merge branches with master-branch.


### Who do I talk to? ###

* Kobby Nuamah (k.nuamah@ed.ac.uk, nkobby@gmail.com).
