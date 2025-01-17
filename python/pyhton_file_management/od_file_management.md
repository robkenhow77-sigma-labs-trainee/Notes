# Managing files in script
### Getting items in a folder
```py
from os import listdir
listdir("foler")
```
### Checking if a folder/file exists
```py
from os import path
path.isdir("folder") # Returns true if exists.
```
### Removing a file
```py
from os import remove
remove(path)
```
### Removing a directory with things in. USE CAREFULLY!
```py
from shutil import rmtree
rmtree(path)
```