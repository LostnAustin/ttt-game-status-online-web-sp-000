# Helper Method
require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top ROW
  [0,3,6],
  [0,4,8],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [3,4,5],
  [6,7,8]
]
def won?(board)
WIN_COMBINATIONS.each do |combinations|
#  binding.pry
    if (board[combinations[0]] == board[combinations[1]]) && (board[combinations[2]] == board[combinations[0]]) && position_taken?(board,combinations[0])
      return combinations
    #if win positions not on board, return false
      end
    end
    return false
  end


def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end


def draw?(board)
  if full?(board) && !won?(board)
    return true
  else !won?(board) && !full?(board) || won?(board) == true
  return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

def winner(board)
  if winning_combo = won?(board)
  return board[winning_combo[0]]
    return winning_combo[0]
  
  end
end
