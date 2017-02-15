# Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.

class Vehicle
  # Story: As a programmer, I can turn on and off the lights on a given Vehicle.
  # Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
  def initialize(model_years)
    @signal = "off"
    @lights = false
    @model_years = model_years
    puts "Initialize lights and signals to off"
  end
  def on_lights
    @lights = true
    puts "Turned the lights on: #{@lights}"
  end
  def off_lights
    @lights = false
    puts "Turned the lights off: #{@lights}"
  end
  # As a programmer, I can determine if the lights are on or off. Lights start in the off position.
  def status_lights
    # puts "The lights are #{@lights}"
    @lights
  end
  # Story: As a programmer, I can signal left and right. Turn signals starts off.
  def signal_off
    @signal = "off"
    puts "the signal was turned #{@signal}"
    @signal
  end
  def signal_right
    @signal = "right"
    puts "signal #{@signal}"
  end
  def signal_left
    @signal = "left"
    puts "signal #{@signal}"
  end
  def status_signal
    # puts "The status of the signal is: #{@signal}"
    @signal
  end
  def get_model
    @model_years
  end
end
# Tests for first set of Stories:
# vehicle = Vehicle.new()
# vehicle.status_lights # should return false
# vehicle.on_lights
# vehicle.status_lights # should return true
# vehicle.off_lights
# vehicle.status_lights # should return false
# vehicle.signal_right
# vehicle.signal_left
# vehicle.signal_off
# my_vehicle = Vehicle.new
# my_vehicle.status_lights

# Story: As a programmer, I can make a car.
# Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
class Car < Vehicle
  # Story: As a programmer, I can tell how many wheels a car has; default is four.
  # Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
  def initialize(model_years)
    # Calls the Vehicle initialize method and populates values for @lights and @signal
    super
    @wheels = 4
    @speed = 0
    # Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Hint: Make model year part of the initialization.
    @model_years
  end
  def return_wheels
    @wheels
  end
  # Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
 def speed_current
  #  puts "The speed is #{@speed}"
   @speed
 end

end
# my_car = Car.new

# Story: As a programmer, I can make a Tesla car.
# Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.

class Tesla < Car
  # Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
  def acceleration
    @speed +=10
    puts "speed is #{@speed}"
  end
  # Story: As a programmer, I can slow my Teslas down by 7 per braking.
  def brake
    @speed -=7
    puts "speed is #{@speed}"
  end
  # Story: As a programmer, I can call upon a car to tell me all it's information.
  # Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
  def tesla_info
    puts "The car information is SPEED/LIGHTS/SIGNAL/MODEL YEAR:"
    puts speed_current.to_s+"/"+status_lights.to_s+"/"+status_signal.to_s+"/"+get_model

  end
end
# Test Cases for Tesla
# my_tesla = Tesla.new("1998")
# my_tesla.tesla_info



# Story: As a programmer, I can make a Tata car.

class Tata < Car
  # Story: As a programmer, I can speed my Tatas up by 2 per acceleration.
  def acceleration
    @speed +=2
    puts "speed is #{@speed}"
  end
  # Story: As a programmer, I can slow my Tatas down by 1.25 per braking.
  def brake
    @speed -=1.25
    puts "speed is #{@speed}"
  end
end

# my_tata = Tata.new

# Story: As a programmer, I can make a Toyota car.
class Toyota < Car
  # Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
  def acceleration
    @speed +=7
    puts "speed is #{@speed}"
  end
  # Story: As a programmer, I can slow my Toyotas down by 5 per braking.
  def brake
    @speed -=5
    put "speed is #{@speed}"
  end
end

# my_toyota = Toyota.new


# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
# Hint: Create two of each vehicles, all from different model years, and put them into an Array.
tesla1 = Tesla.new(2017)
tesla2 = Tesla.new(2012)
tata1 = Tata.new(1978)
tata2 = Tata.new(2017)
toyota1 = Toyota.new(2017)
toyota2 = Toyota.new(1950)
car_array = [tesla1,tesla2,tata1,tata2,toyota1,toyota2]

  # Story: As a programmer, I can sort my collection of cars based on model year.
puts (car_array.map{ |car_object| car_object.get_model }).sort


# Story: As a programmer, I can sort my collection of cars based on model.
# Hint: Sort based on class name.
puts (car_array.map{ |car_object| car_object.class.name}).sort
