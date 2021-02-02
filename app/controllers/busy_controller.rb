class BusyController < ApplicationController

    def index
        @busy = Busy.all
    end

    def new
        @busy = Busy.new
    end

    def create
        @busy = Busy.new(busy_params)
        if @busy.save
        
            redirect_to busy_index_path
        else
            render 'new'
        end
    end

    private
    def busy_params
        params.require(:busy).permit(:name,:opis)
    end
end
  