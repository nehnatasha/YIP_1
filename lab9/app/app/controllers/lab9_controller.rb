class Lab9Controller < ApplicationController
  def input

  end

  def view
		a1 = params[:a1].split.map(&:to_i)
		arr = []
		@result = []
		@all_arrays = []
		a1.each do |val|
			if Math.sqrt(val) % 1 == 0
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
			@result = @all_arrays.max_by(&:length)
			@counter = @all_arrays.length
		else
			@result = 'Нет отрезков'
		end
	
		respond_to do |format|
			format.html
			format.json do
				render json: { type: @result.class.to_s,
											 result: @result,
											 all_arrays: @all_arrays,
											 counter: @counter}
			end
		end
  end
end
