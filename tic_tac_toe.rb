class Game
  puts "Welcome to Tic-Tac-Toe!"
  
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine

  def initialize()
    @one = " "
    @two = " "
    @three = " "
    @four = " "
    @five = " "
    @six = " "
    @seven = " "
    @eight = " "
    @nine = " "
  end  

  def board

   puts " #{@one}  | #{@two}  | #{@three}  "
   puts "--------------"
   puts " #{@four}  | #{@five}  | #{@six}  "
   puts "--------------"
   puts " #{@seven}  | #{@eight}  | #{@nine}  "

  end

  def play
    x_message = "Enter 1 - 9 to place an x"
    o_message = "Enter 1 - 9 to place an o"
    i = 0
    while i < 9
      i % 2 == 0 ? (puts x_message) : (puts o_message)
      user_choice = gets.chomp.to_i
      break if user_choice == 0 
      if user_choice == 1
        i % 2 == 0 ? move_one("x") : move_one("O")
      elsif user_choice == 2
        i % 2 == 0 ? move_two("x") : move_two("O")
      elsif user_choice == 3
        i % 2 == 0 ? move_three("x") : move_three("O")
      elsif user_choice == 4
        i % 2 == 0 ? move_four("x") : move_four("O")
      elsif user_choice == 5
        i % 2 == 0 ? move_five("x") : move_five("O")
      elsif user_choice == 6
        i % 2 == 0 ? move_six("x") : move_six("O")
      elsif user_choice == 7
        i % 2 == 0 ? move_seven("x") : move_seven("O")
      elsif user_choice == 8
        i % 2 == 0 ? move_eight("x") : move_eight("O")
      elsif user_choice == 9
        i % 2 == 0 ? move_nine("x") : move_nine("O")
        
        end
      board
      i += 1
    end
  end

  def move_one(x)
    self.one = x
  end

  def move_two(x)
    self.two = x
  end

  def move_three(x)
    self.three = x
  end

  def move_four(x)
    self.four = x
  end

  def move_five(x)
    self.five = x
  end

  def move_six(x)
    self.six = x
  end

  def move_seven(x)
    self.seven = x
  end

  def move_eight(x)
    self.eight = x
  end

  def move_nine(x)
    self.nine = x
  end

end

my_game = Game.new()
my_game.board
my_game.play




