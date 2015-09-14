class HomeController < ApplicationController
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
        eval.create(name: current_user, content: params[:content],image: params[:image_file],password: params[:password])
        redirect_to :back
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
