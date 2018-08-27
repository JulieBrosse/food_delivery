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
    puts "the action has been made"
  end

  def ask_meal_name
  end

  def ask_meal_price
  end
end
