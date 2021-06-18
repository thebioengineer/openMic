#' openMic
#'
#' openMic gives you a way to have live captioning appear over your slides!
#'
#' @return An `htmltools::tagList()` with the tile view dependencies, or an
#'   [htmltools::htmlDependency()].
#' @section Usage: To add live captioning to your xaringan presentation, add the
#'   following code chunk to your slides' R Markdown file.
#'
#'   ````markdown
#'   ```{r open-mic, echo=FALSE}
#'   openMic::openMic()
#'   ```
#'   ````
#'
#' @name openMic
NULL

#' @describeIn openMic Adds closed captioning to your xaringan slides.
#' @param location location where closed captions should appear: "top" or "bottom"
#' @importFrom htmltools tagList
#' @export
openMic <- function(location = c("bottom","top")) {

  location <- match.arg(location)

  htmltools::tagList(
    html_dependency_open_mic(location = location)
  )
}

#' @describeIn openMic Returns an [htmltools::htmlDependency()] with the openMic
#'   dependencies. Most users will want to use `openMic()`.
#' @importFrom htmltools htmlDependency

#' @export
html_dependency_open_mic <- function(location = "bottom") {

  opts <- sprintf(
    '<script id="openMic-cc-options" type="application/json">%s</script>',
    paste0("{\"loc\":\"",location,"\", \"transcript\": true}")
  )

  htmltools::htmlDependency(
    name = "openMic",
    version = "0.0.1",
    package = "openMic",
    src = "openMic",
    script = "openMic.js",
    stylesheet = "openMic.css",
    head = opts,
    all_files = FALSE
  )
}
