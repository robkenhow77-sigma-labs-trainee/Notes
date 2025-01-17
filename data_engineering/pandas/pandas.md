# Pandas

see docs [here](https://pandas.pydata.org/docs/)
see w3schools docs [here](https://www.w3schools.com/python/pandas/default.asp)
Pandas is a python module used for data analysis. The standard abbreviation when importing pandas is as follows:

```py
import pandas as pd
```

### What can pandas do?
Pandas has a range of functionality including:

- Reading files such as csvs and jsons
- Analysing data
- Cleaning data

### Series

A series is a one-dimensional array holding any data type, like a column in a table.

```py
a = [1, 7, 2]
myvar = pd.Series(a)
```

By default the rows are indexed numerically, 0, 1, 2, ... (like an id) u they can be labelled using the index argument:

```py
a = [1, 7, 2]
myvar = pd.Series(a, index = ["x", "y", "z"])
```

### DataFrame

Whereas a series is like a column, a DataFrame is a table. A row or rows can be indexed using loc:

```py
df.loc[0] # Single row
df.loc[0:2] # Rows 0, 1, 2
df.loc[[0,2]] # Rows 0 and 2
```

Similar to series you can use strings as indexes.

### Basic DataFrame methods

- .head(n) -> returns the top n rows of a DataFrame
- .tail(n) -> returns the bottom n rows of a DataFrame
- .info()  -> returns information about the DataFrame
- .shape -> (attribute not method) returns the number of columns and number of rows in the DataFrame

