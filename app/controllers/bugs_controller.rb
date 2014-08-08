class BugsController < ApplicationController
  
  def index
    @bugs = Bug.all
  end

  def new
    @bug = Bug.new
  end

  def create
    @bug = Bug.new(params[:bug])

    if @bug.save
      redirect_to bug_url(@bug)
    else
      render :new
    end
  end

  def show
    @bug = Bug.find(params[:id])
  end
end
