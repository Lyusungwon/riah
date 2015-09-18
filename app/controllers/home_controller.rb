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
    end
    def write_process        
        if  Eval.where(:user_id => current_user.id, :hairshop_id => params[:hairshop_id]).empty?
        Eval.create(hairshop_id: params[:hairshop_id],user_id: current_user.id, content: params[:content], rating_a: params[:rating_a], rating_b: params[:rating_b], rating_c: params[:rating_c], rating_d: params[:rating_d], rating_e: params[:rating_e], rating_f: params[:rating_f], image: params[:image_file])
        #a = Opinion.where(post_id: params[:id]).all
        #staraverage=a.average(:general).to_f
        
        #ski=a.average(:skill)
        #s=Post.find(params[:id].to_i)
        #s.star =staraverage
        #s.save
        redirect_to :back
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
