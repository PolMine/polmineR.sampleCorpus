setGeneric("use", function(object) standardGeneric("use"))

#' use a corpus
#' 
#' @param object the object to be used
#' @exportMethod use
#' @aliases use use,character-method
#' @rdname use
#' @name use
setMethod("use", "character", function(object){
  if (object == "sampleCorpus"){
    path <- file.path(
      system.file("sampleCorpus", package="polmineR.sampleCorpus"),
      "registry"
    )
    Sys.setenv(CORPUS_REGISTRY=path)
  }
})