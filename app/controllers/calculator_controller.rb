class CalculatorController < ApplicationController
  def index
  end

  def new
    @result = Calculator.send(params[:operation], *[params[:a], params[:b]])
    render :index
  end

end