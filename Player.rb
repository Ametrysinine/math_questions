class Player
  attr_reader :name, :lives
  def initialize(name)
  @name = name
  @lives = 3
  end

  def lose
    @lives -= 1
    puts "#{@name} answered incorrectly and lost a life!"

    if @lives == 0
      puts "#{@name} has 0 lives and loses!"
    end
  end

  def reset
    @lives = 3
  end
end