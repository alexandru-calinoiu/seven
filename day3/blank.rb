class NilClass
	def blank?
		true
	end
end

class String
	def blank?
		self.size == 0
	ende
nd

["", "some", "other", nil].each do |e|
	puts e.blank?
end