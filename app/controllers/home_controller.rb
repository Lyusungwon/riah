class HomeController < ApplicationController
    before_action :authenticate_user!, only: [:write, :delete, :update, :myeval, :myinfo]
    def index
        if user_signed_in?
            redirect_to "/home/main"
        end
    end
    def main
        @hairshop=Hairshop.all
    end
    def hairshopsearch
    end
    def hairshopsearch2
    end
    def hairshop
        @hairshop=Hairshop.find(params[:id])
    end
    def write
        Eval.create(hairshop_id: params[:hairshop_id], user_id: params[:user_id],name: current_user.email, content: params[:content],image: params[:image_file],password: params[:password], 
        rating_a: params[:rating_a],rating_c: params[:rating_c],rating_s: params[:rating_s],rating_f: params[:rating_f])
        redirect_to :back
    end
    def delete
        e=Eval.find(params[:id])
        e.destroy
        redirect_to :back
    end
    def update
        @up=Eval.find(params[:id])
    end
    def modify
        @mo=Eval.find(params[:id])
        @mo.content=params[:content_n]
        @mo.password=params[:password_n]
        @mo.rating_a=params[:rating_a_n]
        @mo.rating_s=params[:rating_s_n]
        @mo.rating_c=params[:rating_c_n]
        @mo.rating_f=params[:rating_f_n]
        @mo.image=params[:image_file_n]
        @mo.save
        
        redirect_to '/home/hairshop/'+ @mo.hairshop_id
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
