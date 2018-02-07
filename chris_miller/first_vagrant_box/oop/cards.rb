class Deck
  attr_reader :cards, :cards_orig
  def initialize
    suits = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
    values = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
    @cards = suits.product(values)
    @cards_orig = @cards
  end

  def shuffle
    @cards.shuffle!
    self
  end

  def reset
    initialize
    self
  end

  def deal(player)
    player.hand.push(@cards.pop)
    self
  end
end

class Player
  attr_accessor :name, :hand
  def initialize(name)
    @name = name
    @hand = []
  end

  def draw(deck)
    deck.deal(self)
    self
  end

  def discard(deck)
    deck.cards.unshift(@hand.pop)
    self
  end
end



deck1 = Deck.new
player1 = Player.new('Name')
deck1.deal(player1)

print player1.hand