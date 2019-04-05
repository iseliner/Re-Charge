class MemoriesController < ApplicationController

  def new
    @memories = Memory.new
  end
  
end
