class PizzaFactory

  def self.create_pizza(type)
    if type == 'Pepperoni'
      return PepperoniPizza.new
    if type == 'Greek'
      return GreekPizza.new
    end
  end

end

class Pizza

  def bake
    puts "Baking pizza..."
  end

  def package
    puts "Baking pizza..."
  end

end

# Concrete implementations
class PepperoniPizza < Pizza

  def bake
    puts "Baking Pepperoni pizza"
  end

  def package
    puts "Packaging Pepperoni pizza"
  end

end

class GreekPizza < Pizza

  def bake
    puts "Baking Greek pizza"
  end

  def package
    puts "Baking Greek pizza"
  end
  
end
