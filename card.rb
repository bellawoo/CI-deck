class Card
  attr_reader :face_value, :suit
  def initialize rank, suit
    @rank = rank
    @suit = suit
    @face_value = @rank
  end

  def value
    if [:J, :Q, :K].include? @rank
      return 10
    elsif @rank == :A
      return 1
    else
      @rank
  end
end
