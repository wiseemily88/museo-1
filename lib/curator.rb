class Curator

  attr_reader :artists, :museums, :photographs

  def initialize
    @artists = []
    @museums = []
    @photographs = []
  end

  def add_museum(museum)
    @museums << museum
  end

  def add_artist(artist)
    @artists << artist
  end

  def add_photographs(photograph)
    @photographs << photograph
  end

  def find_museum(index_position)
    museums[index_position-1]
  end

  def find_museum_by_photograph(photograph)
    museum_id = photograph.museum_id
    artists[museum_id]
  end


end
