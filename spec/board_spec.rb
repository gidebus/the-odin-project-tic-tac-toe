require_relative '../lib/board.rb'

describe Board do
  let(:board) { Board.new }

  describe '#initialize' do
    it 'initializes an empty array as the board' do
      expect(board.board).to eq(Array.new(9, ' '))
    end
  end

  describe '#move' do
    it 'updates the board' do
      expected = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
      board.move(0, 'X')
      expect(board.board).to eq(expected)
    end
  end

  describe '#position_taken' do
    it  'returns true if position is taken' do
      board.move(0, 'X')
      expect(board.position_taken?(0)).to be(true)
    end

    it 'returns false if position is NOT taken' do
      expect(board.position_taken?(1)).to be(false)
      board.move(1, 'X')
      expect(board.position_taken?(1)).to be(true)
    end
  end

  describe '#valid_move?' do
    it  'returns true if move is valid' do
      expect(board.valid_move?(2)).to be(true)
    end

    it 'returns false if move is NOT valid' do
      board.move(0, 'X')
      expect(board.valid_move?(0)).to be(false)
      expect(board.valid_move?(12)).to be(false)
    end
  end

  describe '#full?' do
    it 'returns true if board is full' do
      board.board = ["X", "X", "X", "X", "X", "X", "X", "X", "X"]
      expect(board.full?).to be(true)
    end

    it 'returns false if board is NOT full' do
      board.board = ["X", "X", "X", "X", "X", "X", "X", "X", " "]
      expect(board.full?).to be(false)
    end
  end

  describe '#input_to_index' do
    it 'returns an integer minus 1' do
      expect(board.input_to_index('8')).to eq(7)
    end
  end

  describe '#won' do
    it 'returns the winning combination if won' do
      board.board = ["X", "O", "X", "O", "X", "O", "X", " ", " "]
      winning_combination = [2, 4, 6]
      expect(board.won).to eq(winning_combination)
    end
  end

  describe '#winner' do
    it 'returns the winner token' do
      board.board = ["X", "O", "X", "O", "X", "O", "X", " ", " "]
      expect(board.winner).to eq('X')
    end
  end

  describe '#turn_count' do
    it 'counts the correct number of turns' do
      board.board = ["X", "X", "X", "X", "X", "X", "X", " ", " "]
      expect(board.turn_count).to eq(7)
      board.move(7, 'X')
      expect(board.turn_count).to eq(8)
    end
  end

  describe '#clear' do
    it 'clears the board' do
      board.board = ["X", "X", "X", "X", "X", "X", "X", "X", "X"]
      board.clear
      expect(board.board).to eq(Array.new(9,' '))
    end
  end

end