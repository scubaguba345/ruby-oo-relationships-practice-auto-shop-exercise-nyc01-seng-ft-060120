require_relative '../config/environment.rb'
require 'pry'
require_relative '../app/models/car_owner.rb'
require_relative '../app/models/car.rb'
require_relative '../app/models/mechanic.rb'

car1 = Car.new("Hyundai", "Elantra", "good", "joe_m","Brandon")

joe_m = Mechanic.new("joe_m", "fast_cars")

brandon = CarOwner.new("Brandon")


def reload
  load 'config/environment.rb'
end

binding.pry
