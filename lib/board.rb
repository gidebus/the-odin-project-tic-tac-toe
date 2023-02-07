# frozen_string_literal: true

class Board
  attr_accessor :board

  WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # Bottom row
    [0,3,6], # First column
    [1,4,7], # Second column
    [2,5,8], # Third column
    [0,4,8], # Left diagonal
    [2,4,6], # Right diagonal
  ]

  def initialize
    @board = Array.new(9, " ")
  end

  def display
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "---+---+---"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "---+---+---"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def move(index, icon)
    @board[index] = icon
  end

  def position_taken?(index)
    @board[index] == 'O' || @board[index] == 'X'
  end

  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end

  def full?
    @board.none? { |position| position == ' ' }
  end

  def input_to_index(input)
    index = input.to_i - 1
  end

  def won
    WIN_COMBINATIONS.detect do |combination|
      (@board[combination[0]] == 'X' && @board[combination[1]] == 'X' && @board[combination[2]] == 'X') || (@board[combination[0]] == 'O' && @board[combination[1]] == 'O' && @board[combination[2]] == 'O')
    end
  end

  def winner
    turn_count % 2 == 0 ? 'O' : 'X'
  end

  def turn_count
    @board.count { |position| position == 'X' || position == 'O' }
  end

  def clear
    @board = Array.new(9, ' ')
  end
end
