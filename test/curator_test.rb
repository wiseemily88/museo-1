require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'
require 'pry'

class CuratorTest < Minitest::Test
  attr_reader :curator

  def setup
  @curator = Curator.new
  end

  def test_that_a_curator_exists
    assert_instance_of Curator, @curator
  end

  def test_that_a_curator_initatizes_with_nothing
    assert_equal [], @curator.artists
    assert_equal [], @curator.museums
    assert_equal [], @curator.photographs
  end

  def test_add_musuem_adds_a_value
    museum_1 = Museum.new({name: "MoMA"})
    @curator.add_museum(museum_1)

    assert_equal "MoMA", museum_1.name
    assert_instance_of Array, @curator.add_museum(museum_1)
  end

  def test_add_museums_adds_to_array
    museum_1 = Museum.new({name: "MoMA"})
    @curator.add_museum(museum_1)

    assert_equal 1, @curator.museums.count
  end

  def test_add_museums_adds_to_array
    museum_1 = Museum.new({name: "MoMA"})
    @curator.add_museum(museum_1)

    assert_equal 1, @curator.museums.first.id
  end

  def test_add_artist_adds_to_array
    artist_1 = Artist.new({
      name: "Ansel Adams",
      born: 1902,
      died: 1984,
      country: "United States"})
    @curator.add_artist(artist_1)


    assert_equal 1, @curator.artists.count
    assert_equal 1, @curator.artists.first.id
  end

  def test_add_photograph_adds_to_array
    photo_1 = Photograph.new({
      name: "Moonrise,
       Hernandez",
       artist_id: 1,
       museum_id: 1,
       year: 1941})
    @curator.add_photographs(photo_1)


    assert_equal 1, @curator.photographs.count
    assert_equal 1, @curator.photographs.first.id
  end

  def test_find_museum_returns_by_id
    museum_1 = Museum.new({name: "Museo de Arte Moderno"})
    @curator.add_museum(museum_1)
    museum = curator.find_museum(1)


    assert_equal "Museo de Arte Moderno", museum.name
    assert_equal 1, museum.id
  end

  def test_find_by_photograph
    museum_1 = Museum.new({name: "Metropolitan Museum of Art"})
    artist_1 = Artist.new({name: "Diane Arbus", born: 1923, died: 1971, country: "United States"})
    phot_1 = Photograph.new({name: "Identical Twins, Roselle, New Jersey", artist_id: 1, museum_id: 1, year: 1967})

    @curator.add_museum(museum_1)
    @curator.add_artist(artist_1)
    @curator.add_photographs(phot_1)
    photograph = @curator.photographs.first
    museum = @curator.find_museum_by_photograph(photograph)

    assert_equal 1, museum.id
  end

end
