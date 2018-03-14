require_relative './main.rb'

print 'Input precision 1e-3 or 1e-4: '
precision_s = gets
precision = precision_s.to_f
print 'Input radius: '
radius_s = gets
radius = radius_s.to_f
if [1e-3, 1e-4].include? precision
	print calc(precision,radius)
else
	print 'Choose one of given numbers'
end
