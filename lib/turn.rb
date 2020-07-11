board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
   if index.between?(1,9)
     if !position_taken?(board, index)
       true
     end
   end

  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board,index,character)
  puts board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  def exoh(character)
    puts "Please enter your player"
    character = gets.strip
    if character == "X" || character == "O"
      move(board,index,character)
      display_board(board)
    else
       exoh(character)
     end
   end
  if valid_move?(board,index) == false
    turn(board)
  else puts "Please enter your player"
    character = gets.strip
    if character == "X"
      move(board,index,character)
      display_board(board)
    else exoh
    end
  end
end

#def turn(input)
#if valid_move? == true
#  puts "valid"
#else until
#  valid_move == true
#  puts "invalid"
#  break
# end
