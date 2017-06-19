library(jsonlite)

args <- commandArgs(trailingOnly = TRUE)

json_file <- args
filename = paste(json_file, ".json", sep="")
json_data <- rjson::fromJSON(file=filename)

es <- list()
ss <- c()

for (item in json_data) {
  if (names(item) == "edge") {
   #  i <- item[[1]][[1]] # this is the edge id; maybe not useful
    s <- item[[1]][[2]] # source
    d <- item[[1]][[3]] # destination
    e <- list(source = s, target = d, value = 1)
    edge <- list(e)
    es <- c(es, edge)
  }
  else if (names(item) == "state") {
    i <- item[[1]][[1]] # id
    sm <- item[[1]][[8]] # sootMethod
    c <- item[[1]][[3]] # class
    m <- item[[1]][[4]] # method
    sst <- item[[1]][[9]] # sootStatement
    ps <- item[[1]][[7]] # parameters
    state <- list(id = i, group = 1, sootmethod = sm, node_class = c, method = m, sootStmt = sst, params = ps)
    states <- list(state)
    ss <- c(ss, states)
  }
  else if (names(item) == "errorState") {
    i <- item[[1]][[1]] # id
    sm <- "N/A" # sootMethod
    c <- "N/A" # class
    m <- "N/A" # method
    sst <- "N/A" # sootStatement
    ps <- "N/A" # parameters
    state <- list(id = i, group = 1, sootmethod = sm, node_class = c, method = m, sootStmt = sst, params = ps)
    states <- list(state)
    ss <- c(ss, states)
  }
  else {
    print(paste("Handle:", names(item)))
  }
}

out <- list(nodes = ss, links = es)
out <- toJSON(out, pretty = TRUE, auto_unbox = TRUE)

write(out, file = paste(json_file, "_out.json", sep=""),
      ncolumns = if(is.character(out)) 1 else 5,
      append = FALSE, sep = " ")
