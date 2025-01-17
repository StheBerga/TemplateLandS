
<!-- README.md is generated from README.Rmd. Please edit that file -->

# INT Template

A ready-to-use template for statistical report creation.

<img src="man/figures/logo.png" align="right" width="120"/>

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![R-CMD-check](https://github.com/StheBerga/TemplateLandS/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/StheBerga/TemplateLandS/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/StheBerga/TemplateLandS/graph/badge.svg)](https://app.codecov.io/gh/StheBerga/TemplateLandS)

## Description

INT Template is a R Markdown template designed for creating statistical
reports for the [Fondazione IRCCS Istituto Nazionale dei
Tumori](https://www.istitutotumori.mi.it). The package was developed
using the [indiedown](https://doi.org/10.32614/CRAN.package.indiedown)
package, and the output format is PDF using the *xelatex* engine.

## Installation

You can install the latest version of TemplateLandS directly from GitHub
using `devtools`:

``` r
# Install devtools if not already installed
install.packages("devtools")

# Install TemplateLandS
devtools::install_github("StheBerga/TemplateLandS")
```

## Quick Start

After installing the package, you will need to restart R to access the
template. To create a new R Markdown file using TemplateLandS, navigate
to File -\> New File -\> R Markdown. In the resulting window, choose
“From Template,” and then select “LandS LaTeX Report {TemplateLandS}”
from the options on the right.

For more information, please consult the vignette section.

## Contributing

Contributions, bug reports, and feature suggestions are welcome! Please
open an issue or submit a pull request on the repository.

## License

TemplateLandS is distributed under the MIT license. See the
[LICENSE](https://github.com/StheBerga/TemplateLandS/blob/2e6647104c4bea7e46f28684bd4faf8f96ac06a7/LICENSE)
file for details.
