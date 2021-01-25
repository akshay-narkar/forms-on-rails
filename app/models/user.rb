class User < ApplicationRecord
  validates :password, presence: { message: 'Needs to be present' },
                       length: { minimum: 7, message: 'Password should be atleast 7 characters long' }
  validates :email, presence: { message: 'Needs to be present' },
                    uniqueness: { message: 'Already taken. Please try a new one' }, length: { minimum: 5 }
  validates :username, presence: { message: 'Needs to be present' },
                       uniqueness: { message: 'Already taken. Please try a new one' },
                       length: { minimum: 2, message: 'Username should be atleast 3 characters long' }
end
