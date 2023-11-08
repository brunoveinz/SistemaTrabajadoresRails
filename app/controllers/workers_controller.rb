class WorkersController < ApplicationController
    before_action :authenticate_user!

    def index
        @workers = Worker.all 
    end

    def new
        @worker = Worker.new
    end 

    def create
        @worker = Worker.new(worker_params)
        if @worker.save
        redirect_to workers_path, notice: 'Trabajador creado exitosamente.'
        else
        render :new
        end
    end 

    def show
        @worker = Worker.find(params[:id])
    end 

    def update
        @worker = Worker.find(params[:id])
        if @worker.update(worker_params)
            redirect_to worker_path, notice: 'Trabajador creado exitos'
        else 
            render :edit 
        end 
    end 

    def edit
        @worker = Worker.find(params[:id])
    end 

    def destroy
        @worker = Worker.find(params[:id])
        if @worker.destroy
            redirect_to workers_path
        end
    end 

    def worker_params
        params.require(:worker).permit(:id, :fullname, :age, :profession, :details)
    end 
end
