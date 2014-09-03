class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end

  def new
    render('tasks/new.html.erb')
  end

  def create
    @task = Task.create(:name => params[:name])
    render('tasks/success.html.erb')
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    @task.update(:done => true)
    render('tasks/complete.html.erb')
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render('tasks/destroy.html.erb')
  end

  def done
    @task = Task.where(:done => false)
    render('tasks/index.html.erb')
  end
end
