class Puppy < ActiveRecord::Base
validates :name, :age, :breed, presence: true
validates :name, length: { minimum: 3 }
validates :age, numericality: { only_integer: true }
end
