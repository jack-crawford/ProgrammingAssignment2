## Jack Crawford
## makeCacheMatrix takes in the original matrix and creates its own matrix object
## complete with setters and getters

## Write a short comment describing this function
#setters and getters for the inverse
makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  set <- function(y){
    x<<- y
    n<<- NULL
  }
  
  get <- function() x
  setInverse <- function(inverse) n<<-inverse
  getInverse<-function() n
  list(set = set,
       get = get, 
       setInverse = setInverse,
       getInverse = getInverse)
}


# actual calculation of the inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    n <- x$getInverse()
    if(!is.null(n)){
        message("fetching cache data")
        return(n)
    }
    data <- x$get()
    n<-solve(data,...)
    x$setInverse(n)
}

