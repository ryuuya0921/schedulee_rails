class TasksController < ApplicationController
  def index #一覧表示画面
    @events = Event.all
  end
  
  def new #新規登録画面
    @event = Event.new
  end
  
  def show #詳細表示画面

  end

end
