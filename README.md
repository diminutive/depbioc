
<!-- README.md is generated from README.Rmd. Please edit that file -->
How to depend on Bioconductor?

The answer: <http://stackoverflow.com/questions/14343817/cran-package-depends-on-bioconductor-package-installing-error>

We have to do this:

``` r
source("http://bioconductor.org/biocLite.R")
```

Then add `biocViews:` to the DESCRIPTION, and the Imports/Suggests we need (`rhdf5` in Imports here and `BiocInstaller` and `zlibbioc` in Suggests).

Then run these:

``` r
devtools::install_deps(dependencies = "Suggests")
devtools::install_deps(dependencies = "Imports")
```

Then this will work:

``` r
library(depbioc)
runa()
#> This is Bioconductor rhdf5 2.18.0 linking to C-library HDF5 1.8.7
```

How to make this work on Travis?
