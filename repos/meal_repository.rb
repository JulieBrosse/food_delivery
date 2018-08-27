class MealRepository
  def initialize
    @meals = []
  end

  def all
    @meals
  end

  def add_meal(meal)
    @meals << meal
  end

  def remove(index)
    @meals.delete_at(index - 1)
  end

  def find_meal(index)
    @meals[index]
  end
end
