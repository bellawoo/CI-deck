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

class TestDeck < Minitest::Test
  def test_counting_cards
    deck = Deck.new

    assert_equal deck.cards.count, 52
  end

  def test_tracking_draws
    deck = Deck.new
    drawn_card = deck.draw
    
    assert_equal deck.cards.count, 51
    refute_includes deck.cards, drawn_card
    assert_includes deck.drawn, drawn_card
  end
end
