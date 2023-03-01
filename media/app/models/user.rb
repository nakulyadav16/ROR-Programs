class User < ApplicationRecord
    has_many :posts

    validates :name, presence: true
    validates :age, numericality: {only_integer: true},presence: true
end
