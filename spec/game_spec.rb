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

  describe '#turn' do
    xit '' do

    end
  end

  describe '#current_player' do
    xit '' do

    end
  end

  describe '#draw?' do
    xit '' do

    end
  end

  describe '#over?' do
    xit '' do

    end
  end

  describe '#play' do
    xit '' do

    end
  end

  describe '#restart' do
    xit '' do

    end
  end

  describe '#play_again?' do
    xit '' do

    end
  end
end
