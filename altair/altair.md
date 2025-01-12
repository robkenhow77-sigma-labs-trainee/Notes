# Altair, data visualisation

### What is Altair
Altair is a python package used for data visualisation - drawing charts.\
It works hand in hand with the python package pandas, which is used for data manipulation.

### Importing Altair
Standard way of abbreviating altair 
```py
import altair as alt
```

### Altair chart object
The main data type for altair is a chart object. It takes a single argument, a pandas DataFrame.
```py
chart = alt.Chart(example_df)
```

### Mark methods
To then draw a chart, a mark_... method is called.\
This can be for multiple types of chart such as bar charts, box plots, pie charts etc.\
[see here](https://altair-viz.github.io/user_guide/marks/index.html) for types of charts and corresponding mark methods.


Bar chart example:
```py
chart = alt.Chart(example_df).mark_bar()
```

Mark methods can also take arguments to change properties such as colour. See link above for more details.

### Encoding method

Encoding is used for constructing the graph. While the mark method specifies the type of graph,\
encoding specifies what columns go where.\
The encoding method also allows for further customisation and styling to graphs.

The x and y properties are used to specify the data from the data frame. For example,
a DataFrame contains columns of 'horsepower' and 'miles_per_gallon'.\
To see these in a chart:

```py
chart = alt.Chart(example_df).mark_bar().encode(
    x='horsepower',
    y='miles_per_gallon'
)
```

Encoding has many arguments, [see here](https://altair-viz.github.io/user_guide/generated/core/altair.Encoding.html)

### Encoding Fields

Encoding fields allow you to specify the data types. To encode use a colon, eg:

```py
chart = alt.Chart(example_df).mark_bar().encode(
    x='horsepower:Q',
    y='miles_per_gallon'
)
```

Types of encoding:

- Quantitative (Q): Represents numerical data (e.g., counts, measures).
- Ordinal (O): Represents ordered categorical data (e.g., rankings, grades).
- Nominal (N): Represents unordered categorical data (e.g., names, labels).
- Temporal (T): Represents date or time data (e.g., timestamps).
- Geographic (G): Represents geographic data (used in geospatial charts).

### Further encoding axis - alt.X

Using alt.X() allows further customisation, for example labelling axis.

```py
chart = alt.Chart(example_df).mark_bar().encode(
    x=alt.X(shorthand='horsepower:Q', title='Horses'),
    y='miles_per_gallon'
)
```

### Aggregation

You can pass aggregate functions in encoding arguments, such as average and count.\
Altair automatically groups data, unlike SQL.
Specify the axis to be grouped by, eg average displacement for each number of cylinders.

```py
alt.Chart(cars_df).mark_point().encode(
    x='Cylinders',
    y='average(Displacement)'
)
```
TIP! Think of it like SQL group bys, you need a category and a numeric.

see [aggregate functions](https://altair-viz.github.io/user_guide/encodings/index.html#binning-and-aggregation).

## See examples.ipynb for example graphs