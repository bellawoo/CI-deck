class Card
  attr_reader :face_value, :suit

  def initialize rank, suit
    @rank, @suit = rank, suit
    @face_value = @rank
  end

  def value
    if ['Jack', 'Queen', 'King'].include? @rank
      return 10
    elsif @rank == 'Ace'
      return 1
    else
      @rank
    end
  end

  def to_s
    "#{face_value} of #{suit}"
  end
end
