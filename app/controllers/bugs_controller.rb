class BugsController < ApplicationController
  def new
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
