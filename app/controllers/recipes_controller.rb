class RecipesController < ApplicationController

  def index
    @recipe = Recipe.new
    @recipes = Recipe.all
    render("recipes/index.html.erb")
  end

  def create
    @recipes = Recipe.all
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      flash[:notice] = "Created Successfully."
      redirect_to("/recipes")
    else
      render("recipes/index.html.erb")
    end
  end

  def show
    @recipes = Recipe.all
    @tags = Tag.all
    @recipe = Recipe.find(params[:id])
    render("recipes/show.html.erb")
  end

  def edit
    @recipes = Recipe.all
    @tags = Tag.all
    @recipe = Recipe.find(params[:id])
    render("recipes/edit.html.erb")
  end

  def update
    @recipes = Recipe.all
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipe])
      flash[:notice] = "Updated Successfully."
      redirect_to("/recipes/#{@recipe.id}")
    else
      render("recipes/edit.html.erb")
    end
  end

  def delete
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    flash[:notice] = "Removed Successfully."
    redirect_to('/recipes')
  end

end
