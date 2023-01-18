# Tilte

rmd for test.


```r
# R
library(reticulate)
```



```python
# python
x = [1,2,3]
```


```r
# R
library(magrittr)
py$x %>% print()
```

```
## [1] 1 2 3
```

```r
py$y <- head(cars)
```


```python
# python
print(y)
```

```
## {'speed': [4.0, 4.0, 7.0, 7.0, 8.0, 9.0], 'dist': [2.0, 10.0, 4.0, 22.0, 16.0, 10.0]}
```


```sh
# shell
cat /etc/os-release;
cat /proc/version
```

```
## NAME="Alpine Linux"
## ID=alpine
## VERSION_ID=3.17.1
## PRETTY_NAME="Alpine Linux v3.17"
## HOME_URL="https://alpinelinux.org/"
## BUG_REPORT_URL="https://gitlab.alpinelinux.org/alpine/aports/-/issues"
## Linux version 5.15.79.1-microsoft-standard-WSL2 (oe-user@oe-host) (x86_64-msft-linux-gcc (GCC) 9.3.0, GNU ld (GNU Binutils) 2.34.0.20200220) #1 SMP Wed Nov 23 01:01:46 UTC 2022
```



```sh
# shell
Rscript -e "R.version" -e "library()"
```

```
##                _                           
## platform       x86_64-pc-linux-musl        
## arch           x86_64                      
## os             linux-musl                  
## system         x86_64, linux-musl          
## status                                     
## major          4                           
## minor          2.2                         
## year           2022                        
## month          10                          
## day            31                          
## svn rev        83211                       
## language       R                           
## version.string R version 4.2.2 (2022-10-31)
## nickname       Innocent and Trusting       
## Packages in library ‘/usr/lib/R/library’:
## 
## Matrix                  Sparse and Dense Matrix Classes and Methods
## Rcpp                    Seamless R and C++ Integration
## RcppTOML                'Rcpp' Bindings to Parser for "Tom's Obvious
##                         Markup Language"
## base                    The R Base Package
## cli                     Helpers for Developing Command Line Interfaces
## compiler                The R Compiler Package
## datasets                The R Datasets Package
## evaluate                Parsing and Evaluation Tools that Provide More
##                         Details than the Default
## glue                    Interpreted String Literals
## grDevices               The R Graphics Devices and Support for Colours
##                         and Fonts
## graphics                The R Graphics Package
## grid                    The Grid Graphics Package
## here                    A Simpler Way to Find Your Files
## highr                   Syntax Highlighting for R Source Code
## jsonlite                A Simple and Robust JSON Parser and Generator
##                         for R
## knitr                   A General-Purpose Package for Dynamic Report
##                         Generation in R
## lattice                 Trellis Graphics for R
## lifecycle               Manage the Life Cycle of your Package Functions
## magrittr                A Forward-Pipe Operator for R
## methods                 Formal Methods and Classes
## parallel                Support for Parallel computation in R
## png                     Read and write PNG images
## rappdirs                Application Directories: Determine Where to
##                         Save Data, Caches, and Logs
## renv                    Project Environments
## reticulate              Interface to 'Python'
## rlang                   Functions for Base Types and Core R and
##                         'Tidyverse' Features
## rprojroot               Finding Files in Project Subdirectories
## splines                 Regression Spline Functions and Classes
## stats                   The R Stats Package
## stats4                  Statistical Functions using S4 Classes
## stringi                 Fast and Portable Character String Processing
##                         Facilities
## stringr                 Simple, Consistent Wrappers for Common String
##                         Operations
## tcltk                   Tcl/Tk Interface
## tools                   Tools for Package Development
## utils                   The R Utils Package
## vctrs                   Vector Helpers
## withr                   Run Code 'With' Temporarily Modified Global
##                         State
## xfun                    Supporting Functions for Packages Maintained by
##                         'Yihui Xie'
## yaml                    Methods to Convert R Data to YAML and Back
```


```sh
# shell
python --version;
pip list
```

```
## Python 3.9.16
## Package    Version
## ---------- -------
## pip        22.0.4
## setuptools 58.1.0
## wheel      0.38.4
## WARNING: You are using pip version 22.0.4; however, version 22.3.1 is available.
## You should consider upgrading via the '/usr/local/bin/python -m pip install --upgrade pip' command.
```
