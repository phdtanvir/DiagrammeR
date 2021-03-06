% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/select_nodes.R
\name{select_nodes}
\alias{select_nodes}
\title{Select nodes in a graph}
\usage{
select_nodes(graph, node_attr = NULL, search = NULL, set_op = "union",
  nodes = NULL)
}
\arguments{
\item{graph}{a graph object of class \code{dgr_graph} that is created
using \code{create_graph}.}

\item{node_attr}{an optional character vector of node attribute values for
filtering the node ID values returned.}

\item{search}{an option to provide a logical expression with a comparison
operator (\code{>}, \code{<}, \code{==}, or \code{!=}) followed by a number
for numerical filtering, or, a regular expression for filtering the nodes
returned through string matching.}

\item{set_op}{the set operation to perform upon consecutive selections
of graph nodes. This can either be as a \code{union} (the default), as an
\code{intersection}, or, as a \code{difference} on the previous selection,
if it exists.}

\item{nodes}{an optional vector of node IDs for filtering list of
nodes present in the graph.}
}
\value{
a graph object of class \code{dgr_graph}.
}
\description{
Select nodes from a graph object of class \code{dgr_graph}.
}
\examples{
\dontrun{
# Create a simple graph
nodes <-
  create_nodes(nodes = c("a", "b", "c", "d"),
               type = "letter",
               label = TRUE,
               value = c(3.5, 2.6, 9.4, 2.7))

edges <-
  create_edges(from = c("a", "b", "c"),
               to = c("d", "c", "a"),
               rel = "leading_to")

graph <-
  create_graph(nodes_df = nodes,
               edges_df = edges)

# Select nodes "a" and "c"
graph <- select_nodes(graph = graph, nodes = c("a", "c"))

# Verify that a node selection has been made
get_selection(graph)
#> $nodes
#> [1] "a" "c"
}
}

