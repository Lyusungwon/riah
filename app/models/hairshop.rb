class Hairshop < ActiveRecord::Base
    
    has_many :evals
    has_many :users, through: :evals

    def avg_a
        sum=0
        evals.each do |r|
            sum+=r.rating_a
        end
        if evals.count ==0
            0
        else
        sum/evals.count
        end
    end
    def avg_b
        sum=0
        evals.each do |r|
            sum+=r.rating_b
        end
        if evals.count ==0
            0
        else
        sum/evals.count
        end
    end
    def avg_c
        sum=0
        evals.each do |r|
            sum+=r.rating_c
        end
        if evals.count ==0
            0
        else
        sum/evals.count
        end
    end
    def avg_d
        sum=0
        evals.each do |r|
            sum+=r.rating_d
        end
        if evals.count ==0
            0
        else
        sum/evals.count
        end
    end
    def avg_e
        sum=0
        evals.each do |r|
            sum+=r.rating_e
        end
        if evals.count ==0
            0
        else
        sum/evals.count
        end
    end
    def avg_f
        sum=0
        evals.each do |r|
            sum+=r.rating_f
        end
        if evals.count ==0
            0
        else
        sum/evals.count
        end
    end
    
end
