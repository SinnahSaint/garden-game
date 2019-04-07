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
    puts "You just planted an #{name} tree. By watering it, you will get fruits to collect them."
    @count += 1
    puts @count
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
