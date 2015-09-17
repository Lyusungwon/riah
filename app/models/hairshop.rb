class Hairshop < ActiveRecord::Base
    
    has_many :evals
    has_many :users, through: :evals

    def avg_a
        sum=0
        evals.each do |r|
            sum+=r.rating_a.to_f
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
            sum+=r.rating_b.to_f
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
            sum+=r.rating_c.to_f
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
            sum+=r.rating_d.to_f
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
            sum+=r.rating_e.to_f
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
            sum+=r.rating_f.to_f
        end
        if evals.count ==0
            0
        else
        sum/evals.count
        end
    end
    
end
