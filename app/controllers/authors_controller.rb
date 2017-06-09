class AuthorsController < ApplicationController

    def index
        @authors = Author.all
    end

    def show
         @author = Author.find(params[:id])
    end

    def edit
        
    end

    def new
        @author = Author.new
        
    end

    def create
        @author = Author.new(author_params)
        if @author.save
            flash[:notice] = "Successfully created post!"
            redirect_to author_path(@author)
        else
            flash[:alert] = "Error creating new post!"
            render :new
        end

        
    end

    def update
        
    end

    def destroy
        
    end

    private 

    def author_params
        params.require(:author).permit(:name)
    end
end
