require_relative 'meal_repository'
require_relative 'meals_controller'
require_relative 'router'

repository = MealRepository.new
controller = MealsController.new(repository)
router = Router.new(controller)
router.run
