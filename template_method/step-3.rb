class HotBeverage

  def prepare
    boil_water
    brew
    pour_in_cup
    add_condiments
  end

  def boil_water
    puts "HotBeverage: Boiling water"
  end

  def brew
    puts "HotBeverage: Brewing"
  end

  def pour_in_cup
    puts "HotBeverage: Pour into cup"
  end

end

class CoffeeRecipe < HotBeverage
  def brew
    puts "Coffee: Brewing coffee grounds"
  end

  def add_condiments
    puts "Coffee: Adding sugar and milk"
  end

end

class TeaRecipe < HotBeverage

  def brew
    puts "Tea: Steep tea bag"
  end

  def add_condiments
    puts "Tea: Add Lemon"
  end

end

coffee = CoffeeRecipe.new
coffee.prepare

tea = TeaRecipe.new
tea.prepare
