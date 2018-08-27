require_relative 'meal'
require_relative 'meals_view'

class MealsController
  def initialize
    @meals_view = MealsView.new
    @repository = repository
  end

  def add
    name = @view.ask_meal_name
    price = @view.ask_meal_price
    @meal_repository.create(name, price)
    @meals_view.confirmation
  end

  def destroy
    display_meals
    index = @meals_view.ask_index
    @meal_repository.remove(index)
    @meals_view.confirmation
  end

  def list
    display_meals
  end

  private

  def display_meals
    meals = @meal_repository.all
    @meals_view.display(meals)
  end

end
