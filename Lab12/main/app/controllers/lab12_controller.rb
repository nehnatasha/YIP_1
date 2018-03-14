class Lab12Controller < ApplicationController

  before_action :check_login, only: :view

  def index
  end

  def view
    a1 = params[:a1]
    if res = Lab12Result.find_by_inputstr( a1 )
      @result = ActiveSupport::JSON::decode( res.result )
    else
      a1 = a1.split.map(&:to_i)
      arr = []
      all_arrays = []
      a1.each do |val|
        if Math.sqrt(val) % 1 == 0
          arr.push(val)
        elsif !arr.empty?
          all_arrays.push(arr)
          arr = []
        end
      end
      if !arr.empty?
        all_arrays.push(arr)
      end
      if !all_arrays.empty?
        #  result = all_arrays.max_by(&:length)
        #  counter = all_arrays.length
        #else
        @result = 'Нет отрезков'
      end
      @result = all_arrays.each_index.collect {|i| ["Отрезок #{i+1}", all_arrays[i].join(', ')]}
      @result += [['Самый длинный отрезок', all_arrays.max_by(&:length)],['Количество отрезков',all_arrays.length ]]
      res = Lab12Result.create :inputstr => a1, :result => ActiveSupport::JSON::encode( @result )
      res.save
    end
    end
    def check_login
    unless logged_in?
      redirect_to signin_url
      flash[:message] = 'Вы не авторизованы'
    end
  end
end
