def turn(board)
  puts "Please enter 1-9:"

end

# code your #valid_move? method here
def valid_move?(tablero, indice)
  indice = indice.to_i
  if position_taken?(tablero, indice) && indice >= 0
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
    if board != nil && index != nil && index < board.size
      if board[index] == "" || board[index] == " " || board[index] == nil
        return true
      end
    end
end

def input_to_index(input)
  input = input.to_i
  input = input - 1;
  return input
end

def move(board, index, value = "X")
  board[index] = value
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
