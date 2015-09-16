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
        
        
    searching = params[:searchkey]
    @result=Hairshop.search(searching).all
    @ar =Array.new
    @result.each do |x|
    c=x.id
    k=c.to_s
    @ar << k
    @x=nil
   # @ar2 = Array.new
    #  for i in 0...@ar.length
      
    
    
    
    end
     @@arr=@ar
    
        
        
        
        
        
    end
    def hairshopsearch2
    end
    def hairshop
        @hairshop=Hairshop.find(params[:id])
    end
    def write
    
    if  Opinion.where(:user_id =>current_user.id, :hairshop_id => params[:id]).empty?
    evaluation = Opinion.new
    evaluation.user_id = current_user.id
    evaluation.hairshop_id = params[:id]
    evaluation.general = params[:rating1].to_i
    evaluation.money = params[:rating2].to_i
    evaluation.service = params[:rating3].to_i
    evaluation.cut = params[:rating4].to_i
    evaluation.perm = params[:rating5].to_i
    evaluation.dye = params[:rating6].to_i
    evaluation.op= params[:text]
    opinions.save
  
    a = Opinion.where(post_id: params[:id]).all
    
    
    staraverage=a.average(:general).to_f
    #ski=a.average(:skill)
    s=Post.find(params[:id].to_i)
    s.star =staraverage
    s.save
    
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
