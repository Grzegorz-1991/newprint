class BusyController < ApplicationController
    before_action :set_busy, only: [:show, :edit, :update, :destroy]
    
    def show

    end

    def index
        @busy = Busy.all
    end

    def new
        @busy = Busy.new
    end

    def create
        @busy = Busy.new(busy_params)
        if @busy.save
            flash[:notice] = "Dodano realizację"
            redirect_to busy_index_path
        else
            render 'new'
        end
    end

    def edit

    end
    def update
    
        if @busy.update(busy_params)
            flash[:notice] = "Poprawnie edytowano realizację."
            redirect_to @busy
        else
            render 'edit'
        end
    end

    def destroy
        @busy.destroy
        redirect_to busy_index_path
    end

    private
    def busy_params
        params.require(:busy).permit(:name,:opis, images:[])
    end

    def set_busy
        @busy = Busy.find(params[:id])
    end
end
  