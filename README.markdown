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

- Version: 2.0.4
- Date: 9th July 2009
- Github Repository: <http://github.com/symphony/symphony-2/tree/master>


### Synopsis

Symphony is a `PHP` & `MySQL` based CMS that utilises `XML` and `XSLT` as its core 
technologies. This repository represents version 2.0.3 and is considered stable.

Visit the forum at <http://symphony-cms.com/forum/>


## Updating

### Via Git

1. Use the following command to get Extensions up to date:

	git submodule init
	git submodule update

2. Follow normal updating procedure below from step 4.

### Via the old fashioned way

Follow the instructions below if you are updating from Symphony version 2.0 (non Git)

1. Backup `/symphony/.htaccess`.

2. Upload `/symphony`, `index.php` & `update.php`, replacing what is already on your server.

3. Put the backed-up `.htaccess` file into the new `/symphony` folder.

4. Go to `http://yoursite.com/update.php` to complete the update process.

5. Celebrate by shaving your friend's head for charity!


## INSTALLING

### Via Git

1. Clone the git repository to the location you desire using:

		git clone git://github.com/symphony/symphony-2.git
		
	Should you wish to make contributions back to the project, fork the master tree rather than cloning, and issue pull requests via github.

	The following repositories are included as submodules:

	- [Markdown](http://github.com/pointybeard/markdown)
	- [Maintenance Mode](http://github.com/pointybeard/maintenance_mode)
	- [Select Box Link Field](http://github.com/pointybeard/selectbox_link_field)
	- [JIT Image Manipulation](http://github.com/pointybeard/jit_image_manipulation)
	- [Export Ensemble](http://github.com/pointybeard/export_ensemble)
	- [Debug DevKit](http://github.com/symphony/debugdevkit/tree/master)
	- [Profile DevKit](http://github.com/symphony/profiledevkit/tree/master)

3. Run the following commands to ensure the submodules are cloned:

		git submodule init
		git submodule update

4. _(Optional)_ If you would like the [default theme](http://github.com/symphony/workspace/tree) installed as well, 
you will need to use the following command from within the Symphony 2 folder you just created:

		git clone git://github.com/symphony/workspace.git
		
5. Follow normal installation procedure below from step 2.


### Via the old fashioned way

**Note: You can leave `/workspace` out if you do not want the default theme.**

1. This step assumes you downloaded a zip archive from the [Symphony website](http://symphony21.com). 
Upload the following files and directories to the root directory of your website:

	- index.php
	- install.php
	- /symphony
	- /workspace
	- /extensions

2. Point your web browser at <http://yourwebsite.com/install.php> and provide
details for establishing a database connection and about your server environment.

3. Jump with both arms up like you're in a car commercial!


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