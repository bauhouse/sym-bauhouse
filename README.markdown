# Bauhouse - A Symphony Ensemble

- Author: Stephen Bau
- Version: 0.1
- Date: 13 July 2009
- Github Repository: <http://github.com/bauhouse/sym-bauhouse>

## Overview

### My old portfolio site, updated from it's Symphony 1.5.06 incarnation

It's about time I updated my site. It might need a design refresh, but I still like the old site. With the freelance business a thing of the past, it might be nice to share the old site design, but brought back to life as a brand new version of Symphony 2.0.4.

Visit the old site at <http://bauhouse.ca/>

## Installation

It is best to install this ensemble with Git, but you can also install this ensemble by downloading a copy of Symphony 2.0.4 and each of the required extensions and this workspace. 

### Installing with Git

1. Clone a copy of Symphony 2.0.4 and rename the directory:

		git clone git://github.com/symphony/symphony-2.git

2. Rename the `symphony-2` directory:

		mv symphony-2 bauhouse
		cd bauhouse
		
3. Initialize the submodules for the default extensions:

		git submodule init
		git submodule update

4. Clone the required extensions as submodules:

		cd extensions
		git clone git://github.com/carsten/collapse_sectionfields.git
		git clone git://github.com/ahwayakchih/markitup.git
		git clone git://github.com/nickdunn/order_entries.git
		git clone git://github.com/nickdunn/publishfiltering.git
		git clone git://github.com/rowan-lewis/logsdevkit.git
		git clone git://github.com/nickdunn/entity_diagram.git
		git clone git://github.com/nickdunn/section_schemas.git
		git clone git://github.com/bauhouse/export_install_file.git

5. Clone the Symphony workspace for DesignProjectX:

		cd ..
		git clone git@github.com:bauhouse/sym-designprojectx.git

6. Rename the `sym-bauhouse` directory as `workspace`:

		mv sym-bauhouse workspace

7. Set permissions to allow Symphony to write files to the server:

		chmod 777 symphony .
		chmod -R 777 workspace

8. Be sure to have an empty database ready for Symphony (or use a different table prefix). Navigate to the root of the install and provide your preferences, server configuration details and primary user information and click the "Install" button to install Symphony 2 and the Bauhouse ensemble.

9. Secure the site by changing permissions for the root and symphony directories.

		chmod 755 symphony .

10. Enjoy seeing the world in black, white, grey and a touch of red!