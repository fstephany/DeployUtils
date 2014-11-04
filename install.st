" Change the content of this file with the code to load your application.
  Keep the last line, you don't want to keep the image running, that will be the
  job of start.st
"
| gitRepository |

FileStream stdout cr; nextPutAll: 'Installing DeployUtils from the "repository" folder'; cr.

repo := 'filetree://' , MCFileTreeFileUtils current default fullName, '/repository'.

Metacello new
  baseline: 'DeployUtils';
  repository: repo;
  load.


FileStream stdout cr; nextPutAll: 'Done.'; cr.

Smalltalk snapshot: true andQuit: true.
