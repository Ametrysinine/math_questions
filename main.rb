require_relative "./Player"
require_relative "./Question"

puts "Enter Player 1"
player1 = Player.new(gets.chomp)

puts "Enter Player 2"
player2 = Player.new(gets.chomp)

turn_counter = 1

while player1.lives > 0 && player2.lives > 0
  print  "\n Current score: \n"
  print "#{player1.name}: #{player1.lives}\u2665  || #{player2.name}: #{player2.lives}\u2665 \n \n"
  if turn_counter % 2 != 0
    question = Question.new(player1)
  else
    question = Question.new(player2)
  end

  question.ask
  turn_counter += 1
  system "clear"
end

if player1.lives > 0
  puts "#{player1.name} wins with #{player1.lives} lives remaining"
end

if player2.lives > 0
  puts "#{player2.name} wins with #{player2.lives} lives remaining"
end