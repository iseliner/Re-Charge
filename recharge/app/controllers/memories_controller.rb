class MemoriesController < ApplicationController
  before_action :set_memory, only: [:edit, :update, :show, :destroy]

  def index
    @memory = Memory.all
  end
  
  def new
    @memory = Memory.new
  end
  
  def create
    #render plain: params[:memory].inspect
    @memory = Memory.new(memory_params)
    if @memory.save
      flash[:notice] = "Memory has been successfully added"
      redirect_to memories_path(@memory)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @memory.update(memory_params)
      flash[:notice] = "Memory was updated!"
      redirect_to memories_path(@memory)
    else
      flash[:notice] = "Memory was not updated"
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @memory.destroy
    flash[:notice] = "Memory has been deleted."
    redirect_to memories_path
  end

  private
  def memory_params
    params.require(:memory).permit(:title, :description)
  end

  private
  def set_memory
    @memory = Memory.find(params[:id])
  end
    
end
