require './lib/deck'
require './lib/card'
require './lib/player'

RSpec.describe Player do

  describe 'Object Creation' do

    before(:each) do
      @card1 = Card.new(:diamond, 'Queen', 12)
      @card2 = Card.new(:spade, '3', 3)
      @card3 = Card.new(:heart, 'Ace', 14)
      @deck = Deck.new([@card1, @card2, @card3])
      @player = Player.new('Clarisa', @deck)
    end

    it "exists" do
      expect(@player).to be_a(Player)
      expect(@player.name).to eq('Clarisa')
      expect(@player.deck).to eq(@deck)
    end

  end

  describe 'Instance Methods' do

    before(:each) do
      @card1 = Card.new(:diamond, 'Queen', 12)
      @card2 = Card.new(:spade, '3', 3)
      @card3 = Card.new(:heart, 'Ace', 14)
      @deck = Deck.new([@card1, @card2, @card3])
      @player = Player.new('Clarisa', @deck)
    end

    it "has has_lost? method" do
      expect(@player.has_lost?).to be false
    end

    it "has has_lost? method" do
      @player.deck.remove_card
      @player.deck.remove_card
      @player.deck.remove_card

      expect(@player.has_lost?).to be true
    end

  end

end
