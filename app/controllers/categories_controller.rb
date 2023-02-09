class CategoriesController < ApplicationController
  def index
    @category = Categories.all
    puts "hello"
  end
end
