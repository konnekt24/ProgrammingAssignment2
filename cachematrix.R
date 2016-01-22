## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL

#After making empty matrix, put the element of matrix placed thru 'set'       
        set <- function(y) {
                x <<- y
                m <<- NULL
        }

        get <- function() x
        solvematrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       m <- x$getmatrix()
## now checking the given matrix whether it's NULL or not.
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrix <- x$get() 
## solve() function returns an inverse matrix of given one, if it is a
## square matrix. or it will print the "U[nrow, ncol] = 0"
        m <- solve(matrix, ...)
        x$solvematrix(m)
        m
}
