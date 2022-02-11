require 'game'

describe Game do
  subject(:game) { described_class.new } 
  let(:player_one) { double :player }
  let(:player_two) { double :player }
  describe '#attack' do
    it 'damages the player' do
      expect(player_two).to receive(:reduces_hp)
      game.attack(player_two)
    end
  end 
end

# describe "attack" do
#   let(:charlotte) { Player.new('Charlotte') }
#   let(:eddie) { Player.new('Eddie') }
#   it "it reduces hp by 10" do
#     expect { charlotte.attack( eddie) }.to change { eddie.hp }.by -10
#   end
# end