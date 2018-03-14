class XmlController < ApplicationController

	before_action :parse_params, only: :index

	def index			
		data = if @numbers.nil?
			      { message: "Неверные параметры запроса #{@numbers}" }
			   else
			      find_sequence(@numbers) 
        end

		respond_to do |format|
			format.xml { render xml: data.to_xml }
			format.rss { render xml: data.to_xml }
		end
	end

	protected

	def parse_params
		@numbers = params[:a1].split.map(&:to_i)
	end

	private
	
	def find_sequence(numbers)
		@checker = @numbers
		arr = []
		@all_arrays = []
		numbers.each do |val|
			if Math.sqrt(val) % 1 == 0 && val != 0
				arr.push(val)
			elsif !arr.empty?
				@all_arrays.push(arr)
				arr = []
			end
		end
		if !arr.empty?
			@all_arrays.push(arr)
		end
		if !@all_arrays.empty?
			@counter = @all_arrays.length
			@result = @all_arrays.max_by(&:length)
		else 
			@result = "Нет отрезков"
		end
		{ results: @result, all_arrays: @all_arrays, counter: @counter, checker: @checker }
	end
end