class PagesController < ApplicationController

  def index
  end

  def make_memory
  end

  def new
    @memory = Memory.new
  end
  
  def create
    #render plain: params[:memory].inspect
    @memory = Memory.new(memory_params)
    if @memory.save
      flash[:notice] = "Memory has been successfully added"
      redirect_to memories_show(@memory)
    else
      render 'new'
    end
  end

  private
  def memory_params
    params.require(:memory).permit(:title, :description)
  end
  
end