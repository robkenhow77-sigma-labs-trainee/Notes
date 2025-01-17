# Shell

### Definitions

- kernel: a core component of the operating system used for managing hardware and software.
- shell: a command line interface (CLI) that allows user to interact ith the kernel to execute commands. eg, bash, sh, zsh
- terminal: a program or hardware device to allow users to interact with a shell. eg, iterm, mac terminal

You open a terminal.\
The terminal starts a shell (e.g., Bash).\
You type a command (e.g., ls).\
The shell interprets the command and sends it to the kernel.


### .zshrc

In the root directory there is a .zshrc file. This is used for making aliases and shell scripts.

### Shell aliases

You can create aliases for certain words in the shell, eg.

```sh
alias python='python3'
alias notes='code ~/Sigma/Notes'
```

This means when python is typed, use python3 instead. Similarly when notes is typed, open the noted folder in vscode.

### Shell scripts

You can take aliases one step further by writing custom shell scripts. eg.

```sh
hello (){
    echo 'hello'
}
```

When hello is typed, echo (print) 'hello' to the shell. More complex commands can be written.

### Parsing arguments

To add arguments use ```$1```. This means replace the ```$1``` with the first thing after the function call.

To run a shell script use ```bash filename```

### Getting .env variables in a bash script 

To get a .env variable in a bash script run source .env in the script, this will get the variables. Then use ```$VAR_NAME``` to call it 