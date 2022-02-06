class Vertex
    attr_accessor :value, :adjecent_vertices

    def initialize(value)
        @value = value
        @adjecent_vertices = []
    end

    # def add_adjecent_vertex(vertex)
    #     @adjecent_vertices << vertex
    # end
    # * for undirected graphs
    def add_adjacent_vertex(vertex)
        return if adjecent_vertices.include?(vertex)
        @adjecent_vertices << vertex
        vertex.add_adjecent_vertex(self)
    end

    # * depth-first search 
    def dfs_traverse(vertex, visited_vertices={})
        visited_vertices[vertex.value] = true
        puts vertex.value

        vertex.adjecent_vertices.each do |adjecent_vertex|
            next if visited_vertices[adjecent_vertex.value]
            dfs_traverse(adjecent_vertex, visited_vertices)
        end

    end
end