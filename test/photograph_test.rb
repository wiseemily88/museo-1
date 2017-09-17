require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test
  attr_reader :photograph
  def setup
    @photograph = Photograph.new({
      name: "Rue Moffetard, Paris (Boy with Bottles)",
      artist_id: 4,
      musuem_id: 2,
      year: 1954
      })
  end

  def test_that_a_photograph_class_exits
    assert_instance_of Photograph, @photograph
  end

  def test_that_photo_has_an_id
    assert_equal 1, @photograph.id
  end

  def test_that_photo_has_an_artist_id
    assert_equal 4, @photograph.artist_id
  end

  def test_that_photo_has_an_musuem_id
    assert_equal 2, @photograph.museum_id
  end

  def test_that_photo_has_a_name
    assert_equal "Rue Moffetard, Paris (Boy with Bottles)", @photograph.name
  end

  def test_that_photo_has_a_year
    assert_equal 1954, @photograph.year
  end


end
