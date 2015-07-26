## Programming Assignment - 2

        ## Create a matrix object to cache the inverse
                makeCacheMatrix <- function(m = matrix()) {
        
        ## Initialize the inverse property
                i <- NULL

        ## Method to set the matrix
                set <- function( matrix ) {
                m <<- matrix
                i <<- NULL
        }

        ## Method the get the matrix
                get <- function() {
    	
    	## Return the matrix
    	        m
        }

        ## Method to set the inverse of the matrix
                setInverse <- function(inverse) {
                i <<- inverse
        }

        ## Method to get the inverse of the matrix
                getInverse <- function() {
        
        ## Return the inverse property
                i
        }

        ## Return a list of the methods
                list(set = set, get = get,
                setInverse = setInverse,
                getInverse = getInverse)
        }

        ## Retrival of the cached matrix inverse if it has already been solved by the methods used above
                cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
                m <- x$getInverse()

        ## Return the inverse if its already created
                if( !is.null(m) ) {
                message("getting cached data")
                return(m)
        }

        ## Get the matrix from our object
                data <- x$get()

        ## Calculate the inverse using matrix multiplication
                m <- solve(data) %*% data

        ## Set the inverse to the object
                x$setInverse(m)

        ## Return the matrix
                m
}
