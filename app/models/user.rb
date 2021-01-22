class User < ApplicationRecord
    
    validates :email, uniqueness: true
    validates :password, uniqueness:true
    validates :username, uniqueness: true
end
