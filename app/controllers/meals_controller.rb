require_relative '../models/meal'
require_relative '../views/meals_view'

class MealsController
  def initialize(meal_repository)
    @meals_view = MealsView.new
    @meal_repository = meal_repository
  end

  def add
    name = @view.ask_meal_name
##    price = @view.ask_meal_price
##    new_meal = Meal.new(name: name, price: price)
    @meal_repository.create(new_meal)
    @meals_view.confirmation
  end

#  def destroy
#    display_meals
#    index = @meals_view.ask_index
#    @meal_repository.remove(index)
#    @meals_view.confirmation
#  end

  def list
    display_meals
  end

  private

  def display_meals
    meals = @meal_repository.all
    @meals_view.display(meals)
  end

end
