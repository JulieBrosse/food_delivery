require "csv"

class MealRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @meals = []
    @next_id = 1
    load_csv if File.exist?(@csv_file)
  end

  def all
    @meals
  end

  def add_meal(meal)
    meal.id = @next_id
    @meals << meal
    @next_id += 1
    write_csv
  end

#  def remove(index)
#    @meals.delete_at(index - 1)
#  end

#  def find_meal(index)
#    @meals[index]
#  end

end
