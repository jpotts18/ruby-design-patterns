class CoffeeRecipe

  def prepare
    boil_water
    brew_coffee_grinds
    pour_in_cup
    add_sugar
  end

  def boil_water
    puts "Boiling water"
  end

  def brew_coffee_grinds
    puts "Brewing coffee"
  end

  def pour_in_cup
    puts "Pour into cup"
  end

  def add_sugar
    puts "Add sugar"
  end

end

recipe = CoffeeRecipe.new
recipe.prepare