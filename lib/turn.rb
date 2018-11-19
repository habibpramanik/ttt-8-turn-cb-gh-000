#To display the board display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#turn method
def turn(board)
  puts "Please enter 1-9:"
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  end
  if board[index] == "X" || board[index] == "O"
    return true
  end
  if board[index] == nil
    return false
  end
end