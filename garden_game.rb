class Garden
attr_accessor :name, :count, :water, :fruits, :collect

  def initialize 
    @name = name
    @count = 0
    @water = 0
    @fruits = 0
    @collect = 0
  end

  def plant name
    puts "You just planted an #{name} tree. By watering it, you will get fruits to collect."
    @count += 1
    puts "You now have in total #{@count} trees."
  end

  def trees
    puts "You have #{@count} trees."
  end

  def water
    puts "You just watered your trees and maybe can collect some fruits!"
    @water += 1
  end

  def fruits
    if @water == 1
      puts "You have 5 fruits."
      @fruits = 5
    elsif @water == 2
      puts "You have 10 fruits."
      @fruits = 10 
    elsif @water == 3
      puts "You have 15 fruits."
      @fruits = 15
    elsif @water == 4
      puts "You have 20 fruits."
      @fruits = 20
    elsif @water == 5
      puts "You have 30 fruits."
      @fruits = 30
    elsif @water > 5 
      @fruits = 50 + rand(50)
      puts "You have #{@fruits} fruits."
    else "You don't have fruits to collect!"
      @fruits = 0
    end
  end

  def collect
    puts "You can collect #{@fruits} fruits. "
  end

end

puts "Hello and welcome to a gardening game!"
puts "You can plant trees, water them so you can get fruits to collect."
puts "The options you can choose from:\n
1.What tree you want to plant
2.Water the tree/trees
3.See how many trees you have
4.See how many fruits you have
5.Collect your fruits"
puts "Let's get started then!"
puts "-"*30
tree = Garden.new
puts "What would you like to plant first?"
input = gets.chomp!
tree.plant input
puts "What would you like to do now? (Enter a number from 1 to 5 )"
answer = gets.chomp!

# tried to do a loop so the game would continue to go
def loop input
puts "What would you like to do now? (Enter a number from 1 to 5 )"
answer = gets.chomp!
end

case answer
    when "1"
      puts "What tree do you want to plant?"
      name = gets.chomp!
      tree.plant name
      puts "What would you like to do now?"
      input = gets.chomp!
      loop input
    when "2"
      tree.water
      puts "What would you like to do now?"
      input = gets.chomp!
      loop input
    when "3"
      tree.trees
      puts "What would you like to do now?"
      input = gets.chomp!
      loop input
    when "4"
      tree.fruits
      puts "What would you like to do now?"
      input = gets.chomp!
      loop input
    when "5"
      tree.collect
      puts "What would you like to do now?"
      input = gets.chomp!
      loop input
end
