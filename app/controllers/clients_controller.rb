class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(client_params)
    # @client.account_number = params[:client][:account_number]
    if @client.save
      redirect_to client_path(@client.id)
    else
      render 'new'
    end
  end

  def new
    @client = Client.new
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])

    if @client.update(client_params)
      redirect_to clients_bank_account_path(@client.id)
    else
      render "edit"
    end
  end

  def destroy
    @client = Client.find(params[:id])

    if @client.balance > 0
      redirect_to client_path(@client.id)
    else
      @client.destroy!
      redirect_to clients_path
    end
  end

  private
  def client_params
    params.require(:client).permit(:client_number, :first_name, :middle_name, :last_name)

  end
end