# Export Install File

- Version: 1.1
- Author: Stephen Bau (stephen@domain7.com)
- Build Date: 10 Jul 2009
- Requirements: Symphony 2.0.4, ZIP enabled (--enable-zip)

This is a modified version of Alistair Kearney's Export Ensemble. The intention of this extension is to provide 
a means of maintaining a Git repository of a Symphony ensemble by exporting the `workspace/install.sql` file and including the
updated install file with every commit. Theoretically it is possible to checkout any commit in the repository and
be able to recreate the state of the database at the time of the commit.

### Note

The Export Install File extension does not work when the Export Ensemble extension is enabled. I haven't figured
out how to get these two extensions to work independently of each other, so be sure to disable the Export Ensemble
extension.

### Credit

All credit to creating the extension goes to Alistair Kearney. I simply deleted a few lines to prevent the rest
of the ensemble files from being saved to the ZIP archive.


## Export Ensemble

- Version: 1.6
- Author: Alistair Kearney (alistair@symphony21.com)
- Build Date: 8th July 2009
- Requirements: Latest Symphony 2 build, ZIP enabled (--enable-zip)

This is a replacement for the Symphony 2 Beta "Create Ensemble" feature, cut from the final Symphony 2 release.

It uses the ZIP module of PHP, and as such is memory efficient and should allow for much larger sites to be exported 
without the need for increasing PHP's memory limit.

Currently this extension adds a "Create" button to the preferences page. In the future it will instead have its own 
interface with options for including additional files and folders as well as excluding and other options.


### Installation

** Note: The latest version can alway be grabbed with "git clone git://github.com/pointybeard/export_ensemble.git"

1. Upload the 'export_ensemble' folder in this archive to your Symphony 'extensions' folder.

2. Enable it by selecting the "Export Ensemble", choose Enable from the with-selected menu, then click Apply.


### Change Log

1.6 - Creates separate SQL files. install.sql and workspace/install.sql

1.5 - README and LICENCE are correctly added to the archives

1.3 - Changed call to pageAlert to make easier to translate and conform with 2.0.1 guidelines

1.2 - install() function properly checks for the ZipArchive class and returns true if found, allowing installation

1.1 - Moved "installer.tpl", found in the main S2 repository, into the /lib folder