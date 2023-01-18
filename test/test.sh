#!/bin/sh

DIR_TEST=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

# test rmd
rmd_test=${DIR_TEST}/'test.rmd'
(cd ${DIR_TEST} && Rscript -e "knitr::knit('${rmd_test}')")