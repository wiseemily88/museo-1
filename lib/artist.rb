class Artist
  attr_reader :id,
              :name,
              :born,
              :died,
              :country

  def initialize(arguments)
    @id      = arguments[:id] || 1
    @name    = arguments[:name]
    @born    = arguments[:born]
    @died    = arguments[:died]
    @country = arguments[:country]
  end
end
