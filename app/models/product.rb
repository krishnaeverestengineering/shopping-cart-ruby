class Product < ApplicationRecord
    validates :name, length: {maximum:30}, presence: true
    validates :seller_name, presence: true
    validates :price, presence: true
    validates :description, presence: true,  length: {minimum:8, maximum:2000}
end
