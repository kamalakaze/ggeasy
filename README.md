# ggeasy

Do you constantly have to google how to remove the legend from a ggplot plot? I do. That's why I created these nicely named functions to avoid having to help diminish my google query frequency...

Stuff will likely be added as I continue to remember what I forget.

Install via devtools::

```
devtools::install_github("kamalakaze/ggeasy")
```

Say goodbye to

```
ggplot(data = my_data, aes(x = my_x, y = my_y, color = my_factor)) +
  geom_point() +
  theme(? what do I put here to get rid of my legend)
```

and hello to

```
ggplot(data = my_data, aes(x = my_x, y = my_y, color = my_factor)) +
  geom_point() +
  no_legend()
```
