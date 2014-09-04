class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    @ingredient = Ingredient.new
  end

  def create
    @ingredients = Ingredient.all
    @ingredient = Ingredient.new(params[:tag])
    if @tag.save
      flash[:notice] = "Created Successfully."
      redirect_to ingredients_path
    else
      render "index"
    end
  end

  def show
    @recipes = Recipe.all
    @ingredients = Ingredient.all
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredients = Ingredient.all
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredients = Ingredient.all
    @ingredient = Ingredient.find(params[:id])
    if @tag.update(params[:tag])
      flash[:notice] = "Updated Successfully."
      redirect_to tags_path(@tag)
    else
      render "edit"
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    flash[:notice] = "Removed Successfully."
    redirect_to ingredients_path
  end
end


end
