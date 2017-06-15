g = Multigraph()
v1 = add_vertex!(g, "hi")
v2 = add_vertex!(g, "bye")
add_edge!(g, v1, v2, "dog")

# loop through vertices
for v in values(g.vertices)
    println(v)
end

# loop through edges
for e in values(g.edges)
    println(e)
end

# get out degree
for v in values(g.vertices)
    println("outdegree of vertex ",v.index," is: ", out_degree(g,v))
end

# get in degree
for v in values(g.vertices)
    println("indegree of vertex ",v.index," is: ", in_degree(g,v))
end

# iterate over out edges
for v in values(g.vertices)
    for e_ind in g.out_edges[v.index]
        print("Edge ",e_ind,": ",g.edges[e_ind])
        println(" connects ", v," and ", g.edges[e_ind].v2)
    end
end

# iterate over in edges
for v in values(g.vertices)
    for e_ind in g.in_edges[v.index]
        print("Edge ",e_ind,": ",g.edges[e_ind])
        println(" connects ", g.edges[e_ind].v1," and ", v)
    end
end

