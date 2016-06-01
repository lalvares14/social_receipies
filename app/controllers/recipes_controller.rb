class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

private
  def recipe_params
    params.require(:recipe).permit(:name, :cuisine, :food_type, :preference,
                                   :portions, :cook_time, :difficulty,
                                   :ingredients, :instructions)
  end
end
