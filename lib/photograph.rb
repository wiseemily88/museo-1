class Photograph

  attr_reader :id, :artist_id, :museum_id, :name, :year

  def initialize(photograph)
    @id = 1
    @name = photograph[:name]
    @artist_id = photograph[:artist_id]
    @museum_id = photograph[:museum_id]
    @year= photograph[:year]
  end
end
