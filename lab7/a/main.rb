def create_files
	File.open('F.txt', 'w') do |f|
		str = (0...rand(100)).map{('a'..'z').to_a[rand(26)]}.join
		f.write(str)
	end
	
	File.open('F.txt') do |f|
		h = File.open('H.txt', 'w')
		str = f.readline
		arr = []
		str.each_char {|c| arr << c}
		arr.each_with_index {|val, index| h.write(val) if arr[index-1] == 'a'}
	end	
end