#SSTCLASS

class Car

  attr_reader :make, :model, :classification

  @@all = []

  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
   @@all.map do |car|
      car.classification.uniq
   end

  end

  def self.find_mechanics(classification)
    Mechanic.all.select {|mechanic| mechanic.specialty == classification}
  end

end
