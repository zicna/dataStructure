class Vertex
    attr_accessor :value, :adjecent_vertices

    def initialize(value)
        @value = value
        @adjecent_vertices = []
    end

    def add_adjecent_vertex(vertex)
        @adjecent_vertices << vertex
    end
end