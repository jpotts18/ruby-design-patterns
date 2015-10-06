class CoffeeRecipe

  def prepare
    boil_water
    brew_coffee_grinds
    pour_in_cup
    add_sugar
  end

  def boil_water
    puts "Coffee: Boiling water"
  end

  def brew_coffee_grinds
    puts "Coffee: Brewing coffee"
  end

  def pour_in_cup
    puts "Coffee: Pour into cup"
  end

  def add_sugar
    puts "Coffee: Add sugar"
  end

end

class TeaRecipe

  def prepare
    boil_water
    steep_tea_bag
    pour_in_cup
    add_lemon
  end

  def boil_water
    puts "Tea: Boil Water"
  end

  def steep_tea_bag
    puts "Tea: Steep tea bag"
  end

  def pour_in_cup
    puts "Tea: Pour in cup"
  end

  def add_lemon
    puts "Tea: Add Lemon"
  end

end

coffee = CoffeeRecipe.new
coffee.prepare

tea = TeaRecipe.new
tea.prepare
