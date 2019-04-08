# Do you constantly have to google how to do a specific thing with ggplot2::theme()?

## I do.

That's why I created a package with nicely named functions to carry out various tasks that I always forget how to do!

### Say goodbye to:

```
ggplot(data = my_data, aes(x = my_x, y = my_y, color = my_factor)) +
  geom_point() +
  theme(hey google, what do I put here to get rid of my legend?)
```

### And hello to:

```
ggplot(data = my_data, aes(x = my_x, y = my_y, color = my_factor)) +
  geom_point() +
  no_legend()
```

### Install via devtools:

```
devtools::install_github("kamalakaze/ggeasy")
```
