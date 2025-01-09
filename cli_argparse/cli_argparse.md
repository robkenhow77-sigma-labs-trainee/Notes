# Using Command Line Interface (CLI) options
CLI options allow you to change the way a script performs from the command line.

For example:
```sh
python3 file.py --do_something --and_something_else
```

To use CLI options, use the **argparse** module. This is a python standard library.
from argparse import ArgumentParser

# Initialise
```py
parser = ArgumentParser()
```

### Storing boolean values

The first two arguments are the shorthand and long hand names used in the CLI.\
To use the example action you run:

```sh
python3 file.py -e      or      python3 file.py --example
```


# To add arguments use parser.add_argument()

#### !! Always include help="..."   !!

# Store a boolean
```py
parser.add_argument("-e", "--example", action='store_true', help="-e or --example creates a boolean.")
```
If the file is run without the option being called the example boolean is set to False.\
it is only when the option is included that the variable is stored as True.
### Accessing inputs

To get input of an option you first call the ```parse_args()``` method on the parser object,\
then use ```args.option_name```
```py
args = parser.parse_args()
args.example
```

### Storing strings or integers

To store an integer or string modify the add_argument method.\
To access the variable do exactly the same as above.
```py
parser.add_argument("-w", "--word", type=str, help="-w or --word creates a word.")

# or

parser.add_argument("-n", "--num", type=int, help="-n or --num creates an integer.")
```

### Required inputs

CLI options can be require or optional. Buy default they are optional.\
In the case above, not providing an input would result in a None value.\
In the examples below not the file won't run unless a word is provided.\
If a number is not provided it will default to 15.

```py
parser.add_argument("-w", "--word", type=str, require= True, help="-w or --word creates a word, must be required.")

# or

parser.add_argument("-n", "--num", type=int, default=15, help="-n or --num creates an integer, optional wit default set to 15.")
```