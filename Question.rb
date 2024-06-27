class Question
  @@turn_counter = 1

  def initialize(player)
    @number1 = rand(21)
    @number2 = rand(21)
    @operation = ['+', '-'][rand(2)]
    @player = player
  end

  def ask
    print "#{@player.name}: What is #{@number1} #{@operation} #{@number2}? "
    @answer = gets.chomp.to_i

    if @answer != expected
      @player.lose
    end

  end

  def expected
    eval("#{@number1} #{@operation.to_sym} #{@number2}")
  end
end