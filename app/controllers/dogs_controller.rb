class DogsController < ApplicationController

    before_action :find_dog, only: [:show, :edit, :update, :destroy]

    def index 
        @dogs = Dog.all 
    end

    def new

    end

    def create 

    end

    # def show
    # end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def find_dog
        @dog = Dog.find(params[:id])
    end


end
