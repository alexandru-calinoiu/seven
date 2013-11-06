class Fixnum
	def my_times
		i = self
		while i > 0
			i = i - 1
			yield i
		end
	end
end

3.my_times { |i| puts "Some test #{i}" }