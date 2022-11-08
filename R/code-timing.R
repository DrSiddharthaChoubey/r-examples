
# Get time of code execution
start = Sys.time()
Sys.sleep(3)
print( Sys.time() - start )

# Get time of function execution
do_something_func <- function() { Sys.sleep(5) } 
start = Sys.time()
do_something_func()
print( Sys.time() - start )

# Function time using system.time()
do_something_func <- function() { Sys.sleep(5) } 
system.time({do_something_func()})

# Get duration of code execution
start = proc.time()
Sys.sleep(3)
print( proc.time() - start )

# Using tictoc
library(tictoc)
do_something_func <- function() { Sys.sleep(5) } 
tic()
do_something_func()
toc()

# Using microbenchmark
library(microbenchmark)
do_something_func <- function() { Sys.sleep(0.3) }
microbenchmark(a1=do_something_func(), a2=do_something_func())

# Using rbenchmark
library(rbenchmark)
do_something_func &lt;- function() { Sys.sleep(0.5) }
benchmark(do_something_func())
