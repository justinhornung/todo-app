class CategoriesController < ApplicationController
  def index
    @categories = Categories.all
    render :index
  end

  def create
    @category = Categorie.create(
      name: params[:name],
    )
    render :show
  end
end
