# Working with csvs

## read vs readlines vs reader

### Example csv: 
name, position, foot\
Haaland, CF, left\
Saka, RW, left\
Mbappe, LW, right

# Import csv module
import csv

## read
Can be used on any file. Returns the entire contents as a string 
```py
with open('example.csv', mode='r', encoding='UTF-8') as example:
    file = example.read()

# Output:
# 'name, position, foot\nHaaland, CF, left\nSaka, RW, left\nMbappe, LW, right'
```
## readlines
Can be ued on any file. Returns a list where each value is a string of the row.
```py
with open('example.csv', mode='r', encoding='UTF-8') as example:
    file = example.readlines()

# Output:
# ['name, position, foot\n', 'Haaland, CF, left\n', 'Saka, RW, left\n', 'Mbappe, LW, right']
```

## reader
This is a csv module function. Returns a reader object. Like a list of lists where each element is a csv entry.
```py
with open('example.csv', mode='r', encoding='UTF-8') as example:
    file = csv.reader(example)
    for row in file:
        print(row)
# Output:

[['name', ' position', ' foot']
['Haaland', ' CF', ' left']
['Saka', ' RW', ' left']
['Mbappe', ' LW', ' right']]
```        
## Writing csv

Use the csv module and create a writer object.
```py
with open('new_csv.csv', mode="w", encoding='UTF-8') as example:
    writer = csv.writer(example)
    # Use writer.writerow(list[values]) for writing 1 row
    writer.writerow(["a", "b", "c"])
    # Use writer.writerows(list[list]) for writing multiple rows
    data = [
        [1, 2, 3],
        [4,5,6],
        [7,8,9]
    ]
    writer.writerows(data)
```
The csv will look like:\
\
a,b,c\
1,2,3\
4,5,6\
7,8,9
