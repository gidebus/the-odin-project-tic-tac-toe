require_relative '../lib/game'
require_relative '../lib/board'

describe Game do
  let(:game) { Game.new(instance_double_board) }
  let(:instance_double_board) { instance_double(Board) }

  describe '#initialize' do
    xit 'initializes an empty board' do
      # allow(game).to receive(:board).and_return(Array.new(9, ' '))
      expect(game.board).to eq(Array.new(9,' '))
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
