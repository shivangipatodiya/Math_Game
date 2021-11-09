class Player
attr_accessor :name, :lives
  def initialize(name)
    self.name = name
    self.lives = 3
    
  end

  def deduct_lives
    self.lives -= 1
  end

end
# player1 = Player.new("tim")
# player1.deduct_lives
# puts player1.lives





# class Car
#   attr_accessor :color
#   def initialize (color, year, model)
#     @color = color
#     @year = year
#     @model = model
#   end
#  end
 
#  my_car = Car.new("red", 2007, "matrix")
#  puts my_car.color