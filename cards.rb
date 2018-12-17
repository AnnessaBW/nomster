class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  def initialize
    @cards = []
    @suits = [:diamonds, :spades, :hearts, :clubs]
    @ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
      @suits.each do |suit|
        @ranks.each do |rank|
          @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end
end
  
deck = Deck.new
deck.shuffle
deck.deal
deck.output  