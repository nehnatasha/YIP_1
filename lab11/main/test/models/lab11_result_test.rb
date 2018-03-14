require_relative '../test_helper'

class Lab11ResultTest < ActiveSupport::TestCase
  test 'should test inserting' do
    assert Lab11Result.create(inputstr: '14 15 16 25 3 9 4 36 8 9 10',
      result: '[[\"Отрезок 1\",\"16,25\"],["Отрезок 2\",\"9,4,36\"],["Отрезок 2\",\"9\"],[\"Самый длинный отрезок\",[9,4,36]],[\"Количество отрезков\",3]]')
  end
end
