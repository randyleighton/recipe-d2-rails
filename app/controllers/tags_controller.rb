class TagsController < ApplicationController

  def index
    @tags = Tag.all
    @tag = Tag.new
  end

  def create
    @tags = Tag.all
    @tag = Tag.new(params[:tag])
    if @tag.save
      flash[:notice] = "Created Successfully."
      redirect_to tags_path
    else
      render "index"
    end
  end

  def show
    @recipes = Recipe.all
    @tags = Tag.all
    @tag = Tag.find(params[:id])
  end

  def edit
    @tags = Tag.all
    @tag = Tag.find(params[:id])
  end

  def update
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    if @tag.update(params[:tag])
      flash[:notice] = "Updated Successfully."
      redirect_to tags_path(@tag)
    else
      render "edit"
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "Removed Successfully."
    redirect_to tags_path
  end
end
