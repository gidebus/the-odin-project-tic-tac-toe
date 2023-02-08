require_relative '../lib/game'
require_relative '../lib/board'

describe Game do
  let(:game) { Game.new(instance_double_board) }
  let(:instance_double_board) { instance_double(Board) }

  describe '#initialize' do
    it 'initializes an empty board' do
      allow(game).to receive(:board).and_return(Array.new(9, ' '))
      expect(game.board).to eq(Array.new(9,' '))
    end
  end
end