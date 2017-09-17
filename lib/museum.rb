class Museum
  attr_reader :id,
              :name

  def initialize(arguments)
    @id   = arguments[:id] || 1
    @name = arguments[:name]
  end
end
