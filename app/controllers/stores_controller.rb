class StoresController < ApplicationController
  def index
    @store = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end
  
  def create
    @store = Store.new(store_params)
    if @store.save
      flash[:success] = "料理が登録されました！"
      redirect_to root_url
    else
      render 'store/new'
    end
  end
  
  private

    def store_params
      params.require(:store).permit(:name, :adress, :business_hours, :regular_holiday,
                                   :description, :image)
    end
  
end
