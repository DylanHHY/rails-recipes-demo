class ClientsController < ApplicationController
  before_action :find_client, only: [:show, :edit, :update, :destroy]
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to "/clients"
    else
      render :edit
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_path
    
  end

  private
  def client_params
    params.require(:client).permit(:name, :email, :phone)
  end

  def find_client
    @client = Client.find(params[:id])
  end
end
