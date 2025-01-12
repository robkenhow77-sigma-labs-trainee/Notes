### Git

Make sure to commit regularly to backup files.

### Forking


### Cloning


### Branches


### .gitignore

The ```.gitignore``` file is used to stop files being pushed to github. Files containing sensitive information, such as .env, should not be pushed. If has already been pushed and you want to take it off, see below:

### removing things from github but not local
```sh
git rm -rf --cached
git add .
```

Make sure to edit .gitignore fist!\
This removes everything that is in the git index. ```git add .``` then adds everything back.