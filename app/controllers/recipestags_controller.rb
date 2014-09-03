class RecipestagsController < ApplicationController

  def create
    params.inspect
    @recipe = Recipe.find(params[:id])
    @tag = Tag.find(params[:tag])
    @recipe.tags << @tag
    flash[:notice] = "Updated Successfully."
    redirect_to("/recipes/#{@recipe.id}")
  end

end
