class BankAccountsController < ApplicationController
  def index
    @bank_accounts = BankAccount.all
  end

  def show
    @bank_account = BankAccount.find(params[:id])
  end

  def create

  end

  def new
    @bank_account = BankAccount.new
  end

  def edit

  end

  def update

  end

  def destroy

  end
end