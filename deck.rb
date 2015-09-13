class Deck
  attr_reader :cards

  def initialize
    @rank = [*2..10, 'Jack', 'Queen', 'King', 'Ace']
    @suit = %w[Clubs Diamonds Hearts Spades]
    @cards = @rank.product(@suit)
    @cards_drawn = []
  end

  def shuffle
    @cards.shuffle!
  end

  def draw
    c = @cards.shift
    @cards_drawn.push(c)
    return c
  end

  def drawn
    @cards_drawn
  end

  def cut
    @cards.rotate!(@cards.count / 2)
  end
end
