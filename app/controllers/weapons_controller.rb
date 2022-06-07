class WeaponsController < ApplicationController

  def index
    @weapons = Weapon.all
    json_response(@weapons)
  end

  def show
    @weapon = Weapon.find(params[:id])
    json_response(@weapon)
  end

  def create
    @weapon = Weapon.create!(weapon_params)
    json_response(@weapon, :created)
  end

  def update
    @weapon = Weapon.find(params[:id])
    if @weapon.update!(weapon_params)
      render status: 200, json: {
        message: "This weapon has been sucessfully updated" 
      }
    end
  end

  def destroy
    @weapon = Weapon.find(params[:id])
    if @weapon.destroy!
      render status: 200, json: {
        message: "This weapon has been sucessfully deleted"
      }
    end
  end


  private

  def weapon_params
    params.permit(:name, :class_, :phy, :mag, :skill)
  end  
end