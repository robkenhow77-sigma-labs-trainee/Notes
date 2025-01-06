### How to create secret variables

# Create a .env file and ADD TO .gitignore!!!!

# format as: THIS_IS_MY_SECRET_VARIABLE = the_secret_variable
# (see .env)

# imports
from os import environ as ENV
from dotenv import load_dotenv

# Load secret variables
load_dotenv()

# Call variables
my_variable = ENV["THIS_IS_MY_SECRET_VARIABLE"]

