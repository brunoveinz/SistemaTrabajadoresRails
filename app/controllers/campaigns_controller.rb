class CampaignsController < ApplicationController

    def index
        @campaigns = Campaign.all
    end

    def show 
        @campaign = Campaign.find(params[:id])
        @workers = Campaign.all
    end 

    def new 
        @campaign = Campaign.new
    end 

    def create
        @campaign = Campaign.new(campaign_params)
        if @campaign.save
        redirect_to campaigns_path, notice: 'Campaña Creada Con Exito'
        else
        render :new
        end
    end 
    
    def edit
        @campaign = Campaign.find(params[:id])
    end 

    def update 
        @campaign = Campaign.find(params[:id])
        if @campaign.update(campaign_params)
            redirect_to campaign_path(@campaign), notice: 'Campaña Creada Exitosamente'
        else
            render :edit
        end
    end 

    def destroy 
        @campaign = Campaign.find(params[:id])
        @campaign.destroy
        redirect_to campaigns_path
    end

    def campaign_params
        params.require(:campaign).permit(:id, :name, :totalworkers, :start, :finish)
    end 
end
