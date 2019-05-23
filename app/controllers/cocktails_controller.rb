class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_param)
    @ingredients = Ingredient.find(params[:cocktail_id])
    @ingredient.cocktail = @cocktail
    if @cocktail.save
      redirect_to @cocktails
    else
      render 'cocktails/show'
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end
end

private

def cocktail_param
  params.require(:cocktail).permit(:name)
end
