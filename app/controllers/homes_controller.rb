class HomesController < ApplicationController
  def index
    @homes = Home.all
    render template: "homes/index"
  end

  def show
    @home = Home.find_by(id: params[:id])
    render template: "homes/show"
  end
end
