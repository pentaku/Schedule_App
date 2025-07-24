class TasksController < ApplicationController
  protect_from_forgery #追加

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params) #プライベートメソッド
    if @task.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to tasks_path #indexへ遷移
    else
      flash[:notice] = "スケジュールの登録に失敗しました"
      render "new"
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :tasks
    else
      flash[:notice] = "スケジュールを更新できませんでした"
      render "edit"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice_no_update] = "タスクを削除しました"
    redirect_to :tasks
  end

# プライベートメソッド
  private
  def task_params
    params.require(:task).permit(:title, :start_date, :end_date, :is_all_day, :memo)
  end
end
