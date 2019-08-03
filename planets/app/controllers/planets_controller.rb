class PlanetsController < ApplicationController
  def new
    @planet = Planet.new
  end
  def random
    @planets = Planet.all
    @planet = Planet.find(rand(@planets.length))
  end
  def index
    @planets = Planet.all
  end
  def show
    @planet = Planet.find(params[:id])
  end
  def create
    @planet = Planet.new(planet_params)
    @planet.name.downcase!
    if @planet.save
      redirect_to @planet
    end
  end
  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to planets_path
  end
  def edit
    @planet = Planet.find(params[:id])
  end
  def update
    @planet = Planet.find(params[:id])
    if @planet.update_attributes(planet_params)
      redirect_to @planet
    end
  end
  private
  def planet_params
    params.require(:planet).permit(:name, :num_moons, :color)
  end
end