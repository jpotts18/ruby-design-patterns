
# Why would you prefer enums instead of strings?
# Fixed number of acceptable arguments
# Accepting any string may cause errors

module PizzaType
  PEPPERONI = 1
  CHEESE = 2
  GREEK = 3
end

class PizzaFactory

  def self.create_pizza(type)
    if type == PizzaType::PEPPERONI
      return PepperoniPizza.new
    elsif type == PizzaType::GREEK
      return GreekPizza.new
    elsif type == PizzaType::CHEESE
      return CheesePizza.new
    end
  end

end

class Pizza

  def ingredients
    puts "Dough"
    puts "Tomato Sauce"
  end

end

# Concrete implementations
class PepperoniPizza < Pizza

  def initialize()
    super
  end

  def ingredients
    puts "========"
    super
    puts "* Pepperoni"
  end
end

class GreekPizza < Pizza
  def ingredients
    puts "========"
    super
    puts "* Feta Cheese"
  end
end

class CheesePizza < Pizza
  def ingredients
    puts "========"
    super
    puts "* Extra Cheese"
  end
end
pizzas = []

pizzas << PizzaFactory.create_pizza(PizzaType::PEPPERONI)
pizzas << PizzaFactory.create_pizza(PizzaType::CHEESE)
pizzas << PizzaFactory.create_pizza(PizzaType::GREEK)

pizzas.each {|p| p.ingredients }
