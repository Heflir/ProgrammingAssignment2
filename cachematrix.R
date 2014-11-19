## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

##first set value of matrix

inv<-NULL
set<-function(y){
x<<-y
inv<<-NULL
}

##then get value of matrix

get<-function()x

##set inverse of matrix

setinverse<-function(inverse) inv<<-inverse
getinverse<-function() inv

##then get inverse of matrix

list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
##get inverse of matrix

inv=x$getinv()

##check if inverse of matrix has already been calculated

if(!is.null(inv)){
message("getting cached data")
return(inv)
}

##if not, calculate the inverse

data=x$get()
inv=solve(data, ...)

##set inverse of matrix

x$setinv(inv)
return(inv)
}
