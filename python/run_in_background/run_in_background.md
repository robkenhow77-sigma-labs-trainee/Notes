# Running python in the background

Files can be run in the background. This is good for running server like programs, especially in the cloud.

### Run files in background

To run a file in the background use: ```nohup command file &```\
eg. ```nohup python3 file.py &```

This will run the file indefinitely, even if the terminal is closed. A PID (process id) will be assigned.

### View running files

To view running processes run: `ps -a`.

### Kill processes

To kill a process, run: `kill -9 process_id`\
-9 is a force kill, even unresponsive programs will be killed.
