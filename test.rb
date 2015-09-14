require 'minitest/autorun'
require 'pry'

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
  def test_a_complete_deck
    deck = Deck.new

    assert_equal deck.cards.count, 52
  end

  def test_deck_can_track_draws
    deck = Deck.new
    drawn_card = deck.draw

    assert_equal deck.cards.count, 51
    refute_includes deck.cards, drawn_card
    assert_includes deck.drawn, drawn_card
  end

  def test_deck_can_shuffle_cards
    correct_deck = Deck.new
    deck = Deck.new
    deck.shuffle

    refute_equal deck.cards, correct_deck.cards
  end

  def test_drawing_cards
    correct_deck = Deck.new
    deck = Deck.new
    deck.draw
# binding.pry
    assert_includes correct_deck.cards, deck.drawn.first
    assert_equal deck.cards.count, 51
  end

  def test_can_cut_deck
    correct_deck = Deck.new
    deck = Deck.new
    deck.cut

    assert_equal deck.cards.first, correct_deck.cards[26]
    assert_equal deck.cards.last, correct_deck.cards[25]
  end
end
