class EventsController < ApplicationController
  def index #一覧表示画面
    @events = Event.all
  end
  
  def new #新規登録画面
    @event = Event.new
  end
  
  def show #詳細表示画面
    @event = Event.find(params[:id])
  end
  
  def edit #編集画面
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to event_path(@event), notice: 'イベントが作成されました'
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :start_date, :end_date, :all_day, :memo)
  end
end
