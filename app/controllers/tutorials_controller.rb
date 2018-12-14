class TutorialsController < ApplicationController

    before_action :set_tutorial, only: [:show, :edit, :update, :destroy]

    def index
        @tutorials = Tutorial.all
    end

    def show
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
    end

    def update
        @tutorial.update(tutorial_params)
        redirect_to tutorial_path(@tutorial)
    end

    def destroy
        @tutorial.destroy
        redirect_to restaurants_path
    end

    private

    def tutorial_params
        params.require(:tutorial).permit(:name, :category)
    end

    def set_tutorial
        @tutorial = Tutorial.find(params[:id])
    end

end
