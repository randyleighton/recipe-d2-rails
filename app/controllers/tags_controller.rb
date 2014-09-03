class TagsController < ApplicationController

  def index
    @tags = Tag.all
    @tag = Tag.new
    render("tags/index.html.erb")
  end

  def create
    @tags = Tag.all
    @tag = Tag.new(params[:tag])
    if @tag.save
      flash[:notice] = "Created Successfully."
      redirect_to("/tags")
    else
      render("index.html.erb")
    end
  end

  def show
    @recipes = Recipe.all
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    render("tags/show.html.erb")
  end

  def edit
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    render("tags/edit.html.erb")
  end

  def update
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    if @tag.update(params[:tag])
      flash[:notice] = "Updated Successfully."
      redirect_to("/tags/#{@tag.id}")
    else
      render("tags/edit.html.erb")
    end
  end

  def delete
  end

end
