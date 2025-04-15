1.  **An R Markdown file is plain text file that contains what 3 important types of content?**

-   Optional YAML header (surrounded by ---s)
-   Chunks of R code (surrounded by \`\`\`)
-   Markdown format text (simple text and syntax elements)

2.  **What is a chunk and how do you add them? of the many chunk options which one do you think you will use the most and why? How is inline code different than code chunks?** 

A chunk is a block of text that can be run within your markdown document. You can manually insert using the Rstudio interface and the "Insert button" in the tool bar, or typing the chunk delimiters: 
```{r}```

Out of the many chunk options, I will probably use `error`, `eval`, `echo`, and `message` the most to keep results clean and avoid huge output messages from code/results. 

Inline code is directly embedded into the markdown file and is usually used for descriptions of the code/document. The results are not used for data processing, cleaning, or analysis in which chunks would be better suited for. 

3.  **What’s gone wrong with this code? Why are the points not blue?**

`ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))`

The `color` argument needs to go outside of the `aes` function to plot all the points as blue. Currently, the function is attempting to find a variable in the `mpg` dataset called "blue" to map to. However, there are no variable called blue, so `ggplot` just plots all the points labelled as "blue" in the default color ("red"). 

