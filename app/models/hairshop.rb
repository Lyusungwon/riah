class Hairshop < ActiveRecord::Base
    
    
     include SearchCop

      search_scope :search do
        attributes :name, :address
      end

    has_many :evals
    has_many :users, through: :evals
    
end
