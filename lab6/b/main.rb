def side(previous_side,r)
	Math.sqrt(2*r**2 - 2*r*Math.sqrt(r**2 - previous_side**2/4))
end

def calc(precision,rad)
  sides_num = 6.0
  current_side = rad
	list = Enumerator.new do |calculating|
		loop do	
			calculating.yield current_side
			current_side = side(current_side,rad)
			sides_num *= 2
		end
	end
	list.take_while {|current_side| ((sides_num*2)*side(current_side,rad) - sides_num*current_side) > precision/2 }
	current_side*sides_num
end