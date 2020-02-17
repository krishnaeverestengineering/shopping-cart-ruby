class User < ApplicationRecord
    validates :name, length: {maximum:30}, presence: true
    validates :email, presence: true
    validates :ph, presence: true
    validates :password, presence: true,  length: {minimum:8, maximum:20}
end
