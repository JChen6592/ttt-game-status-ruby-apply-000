# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [6,4,2],
  [0,4,8]
]

def won?(board)
  if !(full?(board)) || draw?(board)
    return false
  else 
    WIN_COMBINATIONS.each do |wc|
      wi_1 = wc[0]
      wi_2 = wc[1]
      wi_3 = wc[2]
      
      pos_1 = board[wi_1]
      pos_2 = board[wi_2]
      pos_3 = board[wi_3]
      
      if pos_1 == "X" && pos_2 == "X" && pos_3 == "X"
        return wc 
      elsif pos_1 == "O" && pos_2 == "O" and pos_3 == "O"
        return wc 
      else 
        false 
      end
    end
  end
end

def full?(board)
  board.all? { |b| b == "X" || b == "O" } 
end 
 
def draw?(board)
  if !(won?(board)) && full?(board)
    return true 
  else 
    return false 
  end 
end 

def over?(board)
  binding.pry 
  if won?(board) || full?(board) || draw?(board)
    return true 
  end 
end 

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
  return nil 
end

    
    
    

