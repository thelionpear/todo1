class ToDosController < ApplicationController
  def index
    @toDos = ToDo.all
  end

  def show
    @toDo = ToDo.find(params[:id])
  end

  def new
    @toDo = ToDo.new 
  end

  def create
    @toDo = toDo.new(toDos_params)
 
    if @toDo.save
      redirect_to toDos_path
    else
      render :new
    end
  end
 
  private
 
    def toDos_params
      params.require(:todo).permit(:title, :notes)
    end

end
