class RecipesController < ApplicationController

  def index
    @recipe = Recipe.new
    @recipes = Recipe.all
    @tags = Tag.all
  end

  def create
    @recipes = Recipe.all
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      flash[:notice] = "Created Successfully."
      redirect_to recipes_path
    else
      render "index"
    end
  end

  def show
    @recipes = Recipe.all
    @tags = Tag.all
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipes = Recipe.all
    @tags = Tag.all
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipes = Recipe.all
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipe])
      flash[:notice] = "Updated Successfully."
      redirect_to recipes_path(@recipe)
    else
      render "edit"
    end
  end

  def delete
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    flash[:notice] = "Removed Successfully."
    redirect_to recipes_path
  end

end
