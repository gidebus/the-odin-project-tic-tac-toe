# frozen_string_literal: true

class Board

  def initialize()
    @board = Array.new(9, ' ')
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

  def valid_token?(token)
    token.upcase == 'X' || token.upcase == 'O'
  end

  def input_to_index(input)
    index = input.to_i - 1
  end

  def input_to_token(input)
    token = input.upcase
  end
end