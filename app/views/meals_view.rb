class MealsView
  def display(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1} - #{meal.name} - #{meal.price}"
  end

  def ask_index
    puts "What index"
    return gets.chomp.to_i
  end

  def confirmation
    puts "Action well made :)"
  end

  def ask_meal_name
    puts "Name?"
    return gets.chomp
  end

  def ask_meal_price
    puts "Price?"
    return gets.chomp
  end
end
