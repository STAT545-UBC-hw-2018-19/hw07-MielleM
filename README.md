
<!-- README.md is generated from README.Rmd. Please edit that file -->
getmode
=======

This package allows you to call a function that returns the mode of a set of data -- it works with multimodal datasets as well.

[I](https://github.com/MielleM) developed getmode as a direct result of being annoyed that `mode()` didn't return what I was expecting. From my frustration at the need for additional packages to find a mode, an additional package was born!

*Getmode requires the `tidyverse`, so make sure that is installed before using the package.*

This is almost certainly a worse package than other mode packages available!

Installation
------------

You can install the released version of getmode from [here](https://github.com/STAT545-UBC-students/hw07-MielleM) with:

``` r
install.packages("getmode")
```

Example
-------

Return the modes of the data frame `lettersmulti`, which are b and c.

``` r
lettermulti <- group_by(as_data_frame(as_factor(c("a", "b", "b", "c", "c"))), value)

lettersmode<- modefunction(lettermulti)
#>   value
#> 1     b
#> 2     c
```
