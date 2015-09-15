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
        Eval.create(content: params[:content], image: params[:image_file])
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
