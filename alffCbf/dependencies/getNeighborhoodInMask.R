getNeighborhoodInMask <- function(image, mask, radius, physical.coordinates = FALSE,
                                  boundary.condition = "NA", spatial.info = FALSE, get.gradient = FALSE ) {

  if (class(image)[1] != "antsImage") {
    stop("Input must be of class 'antsImage'")
  }

  if ((class(mask) != "antsImage")) {
    stop("center must be of class 'antsImage'")
  }

  if ((class(radius) != "numeric")) {
    stop("radius must be of class 'numeric'")
  }

  if ((prod(radius * 2 + 1) * sum(as.array(mask))) > (2^31 - 1)) {
    stop("Requested matrix size is too large for Rcpp")
  }

  boundary = 0
  if (boundary.condition == "image") {
    boundary = 1
  }
  if (boundary.condition == "mean") {
    boundary = 2
  }

  return(.Call("antsImage_GetNeighborhoodMatrix", image, mask, radius, physical.coordinates,
               boundary, spatial.info, get.gradient ))

}
