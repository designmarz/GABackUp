class TodosController < ApplicationController
before_action :set_todo, only: [:show, :edit, :update, :destroy]
  def index
  @todos = Todo.all
  end

  def new
    @todo  = Todo.new
  end


  def show
  end

  def edit
  end

  def create
    @todo = Todo.new(todo_params)
  end

  def update
    @todo.update(todo_params)
    redirect_to @todo, notice: 'Todo was successfully updated.'
  end

  def destroy 
    @todo.destroy
  end
 def set_todo
  @todo = Todo.find(params[:id])
 end

 def todo_params
  params.require(:todo).permit(:title, :content)
 end

end
