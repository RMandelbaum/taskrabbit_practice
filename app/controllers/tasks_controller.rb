class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    logger.debug "~~~~~~~\ntest\n~~~~~~~~~"

    if params[:category].blank?
      @tasks = Task.all.order("created_at DESC")
    else
      @category_id = Category.find_by_name(params[:category]).id
      logger.debug @category_id
      @tasks = Task.where(category_id: @category_id).order("created_at DESC")
    end
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    if @task.save
      redirect_to @task
    else
      render :new, alert: "Something went wrong."
    end
  end

  def edit
  end

  def update
    if @task.update(tasks_params)
      redirect_to @task
    else
      render :edit, alert: "Something went wrong."
    end
  end

  def destroy
    @task.destroy
    redirect_to @task, alert: "Successfully deleted task."
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :description, :company, :url, :category_id)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
