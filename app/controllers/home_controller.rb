class HomeController < ApplicationController
    before_action :authenticate_user!, only: [:write, :delete, :update, :myeval, :myinfo]
    def index
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
        Eval.create(name: current_user.email, content: params[:content],image: params[:image_file],password: params[:password], 
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
