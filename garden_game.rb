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
    grow_fruit
    if @fruits == 0 
      puts "You don't have fruits to collect!"
    else 
      puts "You have #{fruits} fruits."
    end
  end
  
  def grow_fruit
    case(water)
    when 1..4 then @fruits = water * 5
    when 5    then @fruits = 30
    else @fruits = 50 + rand(50)
    end
  end
  
  def collect
    puts "You collected #{fruits} fruits."
    @fruits = 0
    @water = 0
  end
end

def welcome
  puts <<~HEREDOC
        Hello and welcome to a gardening game!

        You can plant trees, water them so you can get fruits to collect.
        The options you can choose from:

          1.Plant a tree
          2.Water the tree/trees
          3.See how many trees you have
          4.See how many fruits you have
          5.Collect your fruits

        Let's get started then!
        #{"-" * 30}
       You start with one tree. When you water your trees, you get fruits from them. 
HEREDOC
end


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


# # what actually runs the game

@my_garden = Garden.new
welcome
input



