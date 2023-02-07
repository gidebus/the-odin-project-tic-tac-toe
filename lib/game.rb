# frozen_string_literal: true
require_relative './board.rb'

class Game

  def initialize
    @board = Board.new
  end

  def turn
    puts 'pick a position from 1 - 9'
    input = gets.chomp
    index = @board.input_to_index(input)
    if @board.valid_move?(index)
      @board.move(index, current_player)
      @board.display
    else
      turn
    end
  end

  def current_player
    @board.turn_count % 2 == 0 ? "X" : "O"
  end

  def draw?
    !@board.won && @board.full?
  end

  def over?
    draw? || @board.won
  end

  def play
    until over?
      turn
    end
    if @board.won
      puts "Winner is #{@board.winner}!"
    else
      puts "Cat's Game!"
    end
  end

end