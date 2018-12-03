require_relative "Board"
require "colorize"
require_relative "cursor"

class Display

    attr_reader :cursor

    def initialize
        @cursor = Cursor.new([0,0], board)
        @board = board
    end 

    def display(board)
        i=0
        while i < 3
            cursor.cursor_pos.colorize
            render
            cursor.get_input
            i += 1
        end
    end

    def render
        @board
    end 
end