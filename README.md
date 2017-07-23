RStudio Project Template for Competition on Kaggle
=======================

# Motivation

In Kaggle Competition, commonly prepare some direcories include submit model codes. These directories structur are similar. Consequently, getting ready used it in the past competition by copy and paste. The purpose of this library is to have a quick start the Kaggle Competition using [RStudio project templates](https://rstudio.github.io/rstudio-extensions/rstudio_project_templates.html) feature. You can setup reproducible enviroment for Kaggle :)

# Quick Start

## Install Package

Install from GitHub (this repository) uing a library such as githubinstall, devtools, drat remotes, and so on.

```r
library(githubinstall)
githubinstall::gh_install_packages("kagglepro")
```

## Usage

Open in RStudio New project menu. Chose 'New Directory' and select 'Kaggle Competition' project template.

If you using docker, input name and mail address for making dockerfile, or import other a dockerfile.

# Recommend

- [Git](https://git-scm.com) for version control.
- [Docker](https://www.docker.com) for virtualization.
