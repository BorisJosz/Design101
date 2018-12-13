class TutorialsController < ApplicationController

    def index
        @tutorials = Tutorial.all
    end

    def show
        @tutorial = Tutorial.find(params[:id])
    end

    def new
        @tutorial = Tutorial.new
    end

    def create
        @tutorial = Tutorial.new(tutorial_params)
        @tutorial.save
        redirect_to tutorial_path(@tutorial)
    end

    def edit
        @tutorial = Tutorial.find(params[:id])
    end

    def update
        @tutorial = Tutorial.find(params[:id])
        @tutorial.update(tutorial_params)
        redirect_to tutorial_path(@tutorial)
    end

    def destroy
        @tutorial = Tutorial.find(params[:id])
        @tutorial.destroy
        redirect_to restaurants_path
    end

    private

    def tutorial_params
        params.require(:tutorial).permit(:name, :category)
    end

end
