class Garden
  attr_reader :trees, :water, :fruits

  def initialize
    @trees = 1
    @water = 0
    @fruits = 0
  end

  def plant
    puts "You just planted a tree. By watering it, you will get fruits to collect."
    @trees += 1
    puts "You now have in total #{trees} trees."
  end

  def count_trees
    puts "You have #{trees} trees."
  end

  def add_water
    puts "You just watered your trees and maybe can collect some fruits!"
    @water += 1
  end

  def count_fruit
    if water == 1
      puts "You have 5 fruits."
      @fruits = 5
    elsif water == 2
      puts "You have 10 fruits."
      @fruits = 10 
    elsif water == 3
      puts "You have 15 fruits."
      @fruits = 15
    elsif water == 4
      puts "You have 20 fruits."
      @fruits = 20
    elsif water == 5
      puts "You have 30 fruits."
      @fruits = 30
    elsif water > 5 
      @fruits = 50 + rand(50)
      puts "You have #{fruits} fruits."
    else puts "You don't have fruits to collect!"
      @fruits = 0
    end
  end

  def collect
    puts "You collected #{fruits} fruits."
    @fruits = 0
    @water = 0
  end

end

puts "Hello and welcome to a gardening game!"
puts "You can plant trees, water them so you can get fruits to collect."
puts "The options you can choose from:\n
1.Plant a tree
2.Water the tree/trees
3.See how many trees you have
4.See how many fruits you have
5.Collect your fruits"
puts "Let's get started then!"
puts "-"*30

puts "Let's plant a tree first. When you water your trees, you get fruits from them."

def input 
  while true
    puts "What would you like to do now? (Enter a number from 1 to 5 )"
    answer = gets.chomp

    case(answer)
    when "1" then @my_garden.plant
    when "2" then @my_garden.add_water
    when "3" then @my_garden.count_trees
    when "4" then @my_garden.count_fruit
    when "5" then @my_garden.collect
    else
      puts "Please type one of the commands."
    end
  end
end


@my_garden = Garden.new

