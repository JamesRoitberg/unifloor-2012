class Users::StocksController < ApplicationController
  
  def index
    @stocks = Stock.all
  end
  
  def new
    @stock = Stock.new
  end
  
  def create
    @stock = Stock.new(params[:stock])
    @stock.save!
  end
  
  def show
    @stock = Stock.find(params[:id])
  end
  
  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy!
  end
  
  def update
    @stock = Stock.find(params[:id])
    @stock.update_attributes(params[:stock])
  end
end
