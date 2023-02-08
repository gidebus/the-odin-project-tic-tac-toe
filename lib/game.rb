# frozen_string_literal: true
require_relative './board.rb'

class Game
  attr_accessor :board
  
  def initialize(board = Board.new)
    @board = board
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
      play_again?
    else
      puts "Cat's Game!"
    end
  end

  def restart
    @board.clear
    play
  end

  def play_again?
    while true
      puts 'Would you like to play again? Y or N'
      input = gets.chomp.upcase
      if input == 'Y'
        restart
      else
        puts 'Bye for now!'
      end
    end
  end
end