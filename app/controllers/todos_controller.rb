class TodosController < ApplicationController
  def index
    @todos = Todo.all
    render :index
  end

  def show
    @todo = Todo.find_by(id: params[:id])
    render :show
  end

  def new
    @todo = Todo.new
    render :new
  end

  def create
    @todo = Todo.create(
      user_id: current_user.id,
      title: params[:todo][:title],
      description: params[:todo][:description],
      deadline: params[:todo][:deadline],
      completed: params[:todo][:completed],
    )
    redirect_to "/todos"
  end

  def edit
    @todo = Todo.find_by(id: params[:id])
    render :edit
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    @todo.update(
      user_id: current_user.id,
      title: params[:todo][:title],
      description: params[:todo][:description],
      deadline: params[:todo][:deadline],
      completed: params[:todo][:completed],
    )
    redirect_to "/todos"
  end
end
