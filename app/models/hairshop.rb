class Hairshop < ActiveRecord::Base
    
    has_many :evals
    has_many :users, through: :evals
    
end
