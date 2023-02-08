require_relative '../lib/game'
require_relative '../lib/board'

describe Game do
  let (:board) { Board.new }
  let(:game) { Game.new(board) }

  describe '#initialize' do
    it 'initializes a class with an empty board' do
      expect(game.board).to eq(board)
    end
  end
end
