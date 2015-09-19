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

        if  true or Eval.where(:user_id => current_user.id, :hairshop_id => params[:hairshop_id]).empty?
            
            puts params[:images].inspect
            new_images = [] 
            params[:images].each do |img|
                new_images << img
            end
            Eval.create do |e| 
                e.hairshop_id = params[:hairshop_id]
                e.user_id = current_user.id
                e.content=  params[:content]
                e.rating_a = params[:rating_a]
                e.rating_b = params[:rating_b]
                e.rating_c = params[:rating_c]
                e.rating_d = params[:rating_d]
                e.rating_e = params[:rating_e]
                e.rating_f = params[:rating_f]
                e.images = params[:images]
            end
                
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
    
    def likeeval_process
         s= Eval.find(params[:id])
        
        if Likeeval.where(:user_id =>current_user.id, :eval_id => params[:id]).empty?
        
          
          Likeeval.create(:user_id => current_user.id, :eval_id => params[:id], :like => true)
          
          s.likenumber = s.likenumber + 1
          s.save
          
          
        else
            
          Likeeval.where(:user_id =>current_user.id, :eval_id => params[:id]).first.destroy
          s.likenumber = s.likenumber - 1
          s.save
        
        end
        render :text =>""
        
    end
    
end
