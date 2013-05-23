def main 
	distance, mpg, cpg, speed = getdriver_inputs

	actual_mpg = mpg_calc(speed, mpg)

	time = time_calc(distance, speed)
	
	cost = cost_calc(distance, actual_mpg, cpg)
	
	state_output(time, cost)
end

def getdriver_inputs   
	print 'How much distance (miles) will you cover? '
	dist = gets.chomp.to_f

	print 'How many miles/gallon can your car usually travel? '
	mpg = gets.chomp.to_f

	print 'What does it cost you per gallon of fuel? '
	cpg = gets.chomp.to_f

	print 'What is your average speed? '
	spd = gets.chomp.to_f
	return dist, mpg, cpg, spd
end 

def time_calc(distance, speed)
  (distance/speed)#.to_s
end

def cost_calc(distance, actual_mpg, cpg)
  (cpg*distance)/actual_mpg#.to_s
end 

def mpg_calc(speed, mpg)
	if speed > 60 
		mpg = mpg - 2*(speed - 60)
	 end 	
	 	return mpg
 end 

 def state_output(time, cost)
 	puts "Your trip will take #{time.round(2)} hrs and cost $#{cost.round(2)}"
 end 

main
 

