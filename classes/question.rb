class Question
  attr_accessor :turn

  def initialize(turn)
    @turn = turn
  end

  def start 
    num1 = rand(1..10)
    num2 = rand(1..10)

    puts "____ NEW TURN TIME ____"
    puts "Player #{turn}: What is #{num1} + #{num2}?"
    print "> "

    answer = $stdin.gets.chomp.to_i

    if answer == num1 + num2
      puts "You're goddamn right"
      return true
    else 
      puts "Naw dawg, that ain't it"
      return false
    end
  end
end