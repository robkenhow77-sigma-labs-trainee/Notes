# Altair, data visualisation

## See examples.ipynb for example graphs

### What is Altair
Altair is a python package used for data visualisation - drawing charts.\
It works hand in hand with the python package pandas, which is used for data manipulation.

### Importing Altair
Standard way of abbreviating altair 
```py
import altair as alt
```

# Making charts

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

# Customisation

[see docs here](https://altair-viz.github.io/user_guide/customization.html)

Graphs can be extensively customised to change shape, colour, scale, markings, etc.\
There are three ways to customise a graph:

- “Global Config” acts on an entire chart object
- “Local Config” acts on one mark of the chart
- “Encoding” channels can also be used to set some chart properties

__Use the encoding method!__

#### Global configuration

This method acts as a theme to the chart and is applied to a chart object, eg.

```py
alt.Chart(cars).mark_point().encode(
    x='Acceleration:Q',
    y='Horsepower:Q'
).configure_mark(
    opacity=0.2,
    color='red'
)
```

#### Local configuration

This method applies directly to the chart, inside the mark method.

```py
alt.Chart(cars).mark_point(opacity=0.2, color='red').encode(
    x='Acceleration:Q',
    y='Horsepower:Q'
)
```

### Encoding configuration 

This method is used with arguments in the encoding method.

```py
alt.Chart(cars).mark_point().encode(
    x='Acceleration:Q',
    y='Horsepower:Q',
    opacity=alt.value(0.2),
    color=alt.value('red')
)
```

### Adjusting title and subtitle

To create a title just pass the title keyword argument in with the data.

```py
alt.Chart(cars, title='This is the title').mark_point().encode( ... )
```

To add a subtitle create an alt.Title object and pass this as the title argument.

```py
alt.Chart(cars, title=alt.Title('This is the title', subtitle= 'this is the subtitle')).mark_point().encode( ... )
```

To make the subtitle multiple lines, enter a list of strings, each string is on a new line.

```py
alt.Chart(cars, title=alt.Title('This is the title', subtitle=['this is line 1', 'this is line 2'])).mark_point().encode( ... )
```

There are more configurations in the docs about title placement.

### Adjusting axis limit

To change the axis scale you must use an alt.X/Y object for defining the x/y axis.\
Setting zero to false will move the axis as far left as possible.

```py
alt.Chart(cars).mark_point().encode(
    alt.X('Acceleration:Q').scale(zero=False),
    y='Horsepower:Q'
)
```

To fully specify the axis range use the domain argument:

```py
alt.Chart(cars).mark_point().encode(
    alt.X('Acceleration:Q').scale(domain=(lower_value, upper_value)),
    y='Horsepower:Q'
)
```

Data may still exist beyond these points. To tell altair how to handle this either use clip or clamp, see docs.

### Adjusting axis labels

To change the axis labels you must use an alt.X/Y object for defining the x/y axis.\
Both the label of the axis (use .title) as well as the prefix of the unit (use .axis(format='')), such as % can be changed.

```py
alt.Chart(df).mark_circle().encode(
    alt.X('x').axis(format='%').title('percentage'),
    alt.Y('y').axis(format='$').title('dollar amount')
)
```

The labels can be removed as well as rotated, see docs.

### Adjusting the legend

A legend is added to the chart automatically when the color, shape or size arguments are passed to the encode() function.\
Each has a class that can be used in the encode. The lend method attaches to this class. The position and legend title can both be specified.\
Eg, for color below.

```py
alt.Chart(iris).mark_point().encode(
    x='petalWidth',
    y='petalLength',
    color=alt.Color('species').legend(orient="left", title='legend title')
)
```

The legend can be removed, see docs.

### Removing chart border

Both the gid and borders can be removed, see docs.

### Adjusting colour

Altair contains colour schemes. These can be applied over a range of values to indicate high/low values. Use the alt.Color class.

```py
alt.Chart(cars).mark_point().encode(
    x='Horsepower',
    y='Miles_per_Gallon',
    color=alt.Color('Acceleration').scale(scheme="lightgreyred")
)
```

You can customise the specififc domain of colours, eg 0-10 is red, 11-20 is orange, 21-30 is yellow.\
You can also set descrete values, eg Europe is red, USA is blue, see below:

```py
domain = ['Europe', "Japan", "USA"]
range_ = ['seagreen', 'firebrick', 'rebeccapurple']

alt.Chart(cars).mark_point().encode(
    x='Horsepower',
    y='Miles_per_Gallon',
    color=alt.Color('Origin').scale(domain=domain, range=range_)
)
```

Notice how the alt.Color references another column in the data frame!


### Adjusting chart size

See docs for how to adjust size and create sub graphs.
