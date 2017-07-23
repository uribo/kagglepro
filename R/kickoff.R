kickoff <- function(path, ...) {
  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)
  dir.create(paste0(path, "/data"))
  dir.create(paste0(path, "/input"))
  dir.create(paste0(path, "/source"))
  dir.create(paste0(path, "/submission"))

  dots <- list(...)

  # add data to .gitignore
  if (dots[[1]] == TRUE) {
    gitignore <- paste0(c(".Rproj.user",
             ".Rhistory",
             ".RData",
             "data/"),
           collapse = "\n")
    writeLines(gitignore, con = file.path(path, ".gitignore"))
  }

  if (file.exists(dots[[3]]) == TRUE) {

    dp <- ifelse(grepl("/$", path), "Dockerfile", "/Dockerfile")

    file.copy(from = dots[[3]],
              to = paste0(path, dp))
  } else {
    if (dots[[2]] == TRUE) {
      dockerfile_info <- paste0(
        "FROM: kaggle/rstats:latest\n",
        paste(paste0('Maintainer: "', dots[[4]], '" ', dots[[5]]), collapse = "\n")
      )
      writeLines(dockerfile_info, con = file.path(path, "Dockerfile"))
    }
  }
}
