# README #


## What is this repository for? ###

* This repository contains the necessary scripts to setup up all the source code and components to run FRANK.
* Note: Bash and PowerShell versions of each script are provided; Powershell is open-source and cross-platform, so it may be used on Linux too; [latest release (7.x.x)](https://github.com/PowerShell/PowerShell/releases) (WIndows 10 uses 5.1 by default)


## How do I get set up? ###

### Clone repositories

Clone this repository. We assume that a directory called _frank_ exists. This repository and other FRANK-related repositories will be cloned.

Directory structure should look this:   
```
frank  
| 
└── frank-composer        
```

Run the `init` script in frank-composer to clone the `franky` and `frank-ui` repositories.

On Linux:
```
$ ./init.sh -u <bitbucket-user-name>
```
or
```
$ source init.sh -u <bitbucket-user-name>
```
In PowerShell on Windows/Linux/Mac:
```
> .\init.ps1
```
which will interactively ask for the username, or, alternatively
```
> .\init.ps1 -u <bitbucket-user-name>
```
The script will clone the repositories into the parent directory of the frank-composer dir.   

The directory structure should now look this:   
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
From the `frank-composer` directory, run the `start` script.
```
$ ./start.sh
```
or
```
> .\start.ps1
```
This script uses `docker-compose` to create all the docker images and containers needed to run FRANK. These include:
* frank-api
* frank-ui
* mongodb
* redis
* neo4j

The mongodb will be seeded with data from
https://frankqa.s3-eu-west-1.amazonaws.com/public/mongo_frank_init.tar.gz.

To stop the containers, run the `stop` script. You can restart the containers with the `start` script.

The `teardown` script stops the docker containers and removes all docker images built. It also removes any docker volumes for the databases which will result in the loss of data. __Use with caution!__

### Contribution guidelines ###

* Create branches for repositories that you want to make changes to.
* Commit changes to repo. Comment commits appropriately. Commit changes regularly. Follow best-practices for using git.
* Create pull requests to merge branches with master-branch.


### Who do I talk to? ###

* Kobby Nuamah (k.nuamah@ed.ac.uk, nkobby@gmail.com).
