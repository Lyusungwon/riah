class HomeController < ApplicationController
    def index
        if user_signed_in?
            redirect_to "/home/main"
        end
    end
    def main
        @evaluation=Eval.all
    end
    def hairshopsearch
    end
    def hairshopsearch2
    end
    def hairshop
        @hairshop=Hairshop.find(params[:id])
    end
    def write
    end
    def write_process        
        if  Eval.where(:user_id => current_user.id, :hairshop_id => params[:hairshop_id]).empty?
        Eval.create(user_id: current_user.id, hairshop_id: params[:harirshop_id], rating_a: params[:rating_a], 
        rating_b: params[:rating_b],  rating_c: params[:rating_c], rating_d: params[:rating_d], rating_d: params[:rating_ㅇ], rating_d: params[:rating_d])
        #a = Opinion.where(post_id: params[:id]).all
        #staraverage=a.average(:general).to_f
        
        #ski=a.average(:skill)
        #s=Post.find(params[:id].to_i)
        #s.star =staraverage
        #s.save
        else
            redirect_to :back   
        end
    end
    def delete
        e=Eval.find(params[:id])
        e.destroy
        redirect_to :back
    end
    def update
        
    end
    def myinfo
        
    end
    def myeval
    end
    def register
    end
    def report
    end
end
