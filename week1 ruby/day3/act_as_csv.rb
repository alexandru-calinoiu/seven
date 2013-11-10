class CsvRow
	def initialize(headers, row)
		headers.each_with_index do |header, index|
			self.class.instance_eval do
				define_method(header) do
					row[index]
				end		
			end
		end
	end
end

module ActAsCsv
	def self.included(base)
		base.extend ClassMethods
	end

	module ClassMethods
		def act_as_csv
			include InstanceMethods
		end
	end

	module InstanceMethods
		attr_accessor :csv_content, :headers

		def read
			@csv_content = []
			filename = self.class.to_s.downcase + '.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')

			file.each do |row|
				@csv_content << row.chomp.split(', ')
			end
		end

		def each 
			@csv_content.each do |row|
				yield CsvRow.new(@headers, row)
			end
		end

		def initialize
			read
		end
	end
end

class RubyCsv
	include ActAsCsv

	act_as_csv
end

c = RubyCsv.new
c.each do |row|
	puts "#{row.first_name} #{row.last_name}"
end