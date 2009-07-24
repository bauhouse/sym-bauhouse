# Bauhouse - A Symphony Ensemble

- Author: Stephen Bau
- Version: 0.1
- Date: 23 July 2009
- Github Repository: <http://github.com/bauhouse/sym-bauhouse>

## Overview

### My old portfolio site, updated from Symphony 1.5.06 to 2.0.4

It's about time I updated my site. It might need a design refresh, but I still like the old site. With the freelance business a thing of the past, it might be nice to share the old site design, but brought back to life with a brand new version of Symphony 2.0.4.

Visit the old site at <http://bauhouse.ca/>


## Built with Symphony CMS

- Version: GitHub integration branch
- Date: 23 July 2009
- Github Repository: <http://github.com/symphony/symphony-2/tree/60abb8552a59e018e9dd7d1dc0a3f01ffe109e81>


### Synopsis

Symphony is a `PHP` & `MySQL` based CMS that utilises `XML` and `XSLT` as its core 
technologies. This repository represents version 2.0.4 and is considered stable.

Visit the forum at <http://symphony-cms.com/forum/>


## INSTALLING

### Via GitHub: Clone or Download

1. Clone the git repository to the location you desire using:

		git clone git://github.com/bauhouse/sym-bauhouse.git
		
	No need for submodules. This is a complete ensemble with all extensions included.
	
	Or download the file from this link: 
		
2. This step assumes you downloaded a zip archive from the [Symphony website](http://symphony21.com). 
Upload the following files and directories to the root directory of your website:

	- index.php
	- install.php
	- /symphony
	- /workspace
	- /extensions

3. Point your web browser at <http://yourwebsite.com/install.php> and provide
details for establishing a database connection and about your server environment.

4. Jump with both arms up like you're in a car commercial!


## SECURITY

**Secure Production Sites: Change permissions and remove installer files.**

1. For a smooth install process, change permissions for the `root`, `symphony` and `workspace` directories.

		cd /your/site/root
		chmod 777 symphony .
		chmod -R 777 workspace

2. Once successfully installed, change permissions as per your server preferences:

		chmod 755 symphony .

3. Remove installer files (unless you're fine with revealing all your trade secrets):

		rm install.php install.sql workspace/install.sql update.php

4. Dance like it's 1999!