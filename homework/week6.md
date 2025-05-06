**1. What is Quarto?**

Quarto is an open-source, publishing tool that is abstracted from Pandoc. It enables users to write in multiple programming languages in a single file, such as bash, R, and Python. It is flexible such that you can format and customize the layout and appearance extensively, and it's compatible with Jupyter and other document formats. 

**2. How do you make columns using Revealjs in Quarto Presentations?**

To create columns, use the `.columns` class and div containers. Example: 

```
:::: {.columns}

::: {.column width="25%"}
Column 1 
:::
```

**3. How would you change the appearance of slides using Revealjs in Quarto Presentations?**

You can alter the theme in the slide heading. Example: 

```
---
title: "Presentation"
format:
  revealjs: 
    theme: moon
---
```

**4. What has been the biggest constraint working on your own research project in the past week?**

Honestly, my biggest constraint has been prepping for my cruise and finding everything that I need in a very short amount of time. Unfortunately, I did not make that much progress this week, but I'm hoping to get a lot more done when I'm on the ship and finally have everything set up!!