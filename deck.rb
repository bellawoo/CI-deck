class Deck
  def initialize
    @rank = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
    @suit = [:C, :H, :D, :S]
    @cards = @rank.product(@suit).shuffle!
  end
end