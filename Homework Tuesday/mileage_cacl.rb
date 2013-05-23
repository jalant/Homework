def inout
  puts "Welcome to the Trip Calculator."
  print "How far are you going today? "
  distance = gets.chomp.to_f
  print "How many MPG does your car ususally get? "
  mpg= gets.chomp.to_f
  print "How much do you pay for gas? "
  gas_price = gets.chomp.to_f
  print "How fast do you drive? "
  speed = gets.chomp.to_f
  real_mpg = mpg_calc(mpg, speed)
  real_cost = cost_calc(real_mpg, distance, gas_price)
  real_time = time_calc(distance, speed)
  puts "Your trip will take #{real_time} hrs and cost $#{real_cost}"
end
def mpg_calc(mpg, speed)
  if speed > 60
    mpg = mpg - 2*(speed - 60)
  end
  mpg
end

def time_calc(distance, speed)
  distance / speed
end

def cost_calc(mpg, distance, cost)
  (distance/mpg)*cost
end

inout
