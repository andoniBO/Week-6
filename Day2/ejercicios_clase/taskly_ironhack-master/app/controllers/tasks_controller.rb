class TasksController < ApplicationController
  before_action :check_user, only: [:edit, :update, :destroy]

  # GET /tasks
  def index
    # @tasks = Task.all
    @tasks =  current_user.tasks
  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /tasks/1
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :due_date, :completed, :user_id)
    end

    def check_task
      @task = Task.find(params[:id])
      unless @task
        render json: {error: "task not found", status:400}
        return
      end
    end

    def check_user
      @task = Task.find(params[:id])
      unless(current_user.id == @task.user_id)
        render json: {error: "user not found", status:400}
        return
      end
    end
end
