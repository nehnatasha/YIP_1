class Lab12Result < ApplicationRecord
  validates_uniqueness_of :inputstr
  validates_presence_of :inputstr
end
