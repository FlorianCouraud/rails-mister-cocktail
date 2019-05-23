class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to @cocktail
    else
      render 'cocktails/new'
    end
  end

  def destroy
    @dose = Dose.find(params[:cocktail_id])
    @dose.destroy
  end

  private

  def dose_param
    params.require(:dose).permit(:ingredient, :description)
  end
end
