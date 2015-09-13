require 'minitest/autorun'

require './card.rb'
require './deck.rb'

class TestCard < Minitest::Test
  def test_number_card_value
    2.upto(10) do |c|
      card = Card.new(c, 'Hearts')

    assert_equal card.value, c
    end
  end

  def test_face_card_value
    ['Jack', 'Queen', 'King'].each do |c|
      card = Card.new(c, 'Diamonds')

    assert_equal card.value, 10
    end
  end

  def test_ace_card_value
    card = Card.new('Ace', 'Spades')
    
    assert_equal card.value, 1
  end
end

# class TestDeck < Minitest::Test
# end
