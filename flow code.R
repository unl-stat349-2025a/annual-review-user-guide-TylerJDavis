library(DiagrammeR)
DiagrammeR::grViz("digraph {

graph [layout = dot, rankdir = LR]

# define the global styles of the nodes. We can override these in box if we wish
node [shape = rectangle, style = filled, fillcolor = Linen]


Numerical [label = 'Numerical Data', shape = rectangle, fillcolor = Grey]
Catagorical [label =  'Binary Data',fillcolor = Grey]
Cat2 [label = 'Multilevel Catagorical Data',fillcolor = Grey]
order [label = 'Odered Cataorical Data',fillcolor = Grey]
hier [label = 'Heirarchical Data',fillcolor = Grey]
non [label = 'Non - Linear Data',fillcolor = Grey]
n [label = 'Methods to use: pmm(Default), norm, norm.boot',fillcolor = Pink]
c [label = 'Methods to use: logreg',fillcolor = Pink]
c2 [label = 'Methods to use: polyreg',fillcolor = Pink]
o [label = 'Methods to use: polyr',fillcolor = Pink]
h [label = 'Methods to use: 21.norm, 21.pmm',fillcolor = Pink]
non1 [label = 'Methods to use: cart, rf(random forest)',fillcolor = Pink ]

# edge definitions with the node IDs
Numerical -> n
Catagorical -> c
Cat2 -> c2
order -> o
hier -> h
non -> non1
}")
