class Author < ApplicationRecord
    validates :name, presence: true
    validates :email, uniqueness: true
    #if need two symbols, can do 
    #validates :name, :email, presence: true
end
