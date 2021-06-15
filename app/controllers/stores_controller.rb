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
      flash[:success] = "店舗が登録されました！"
      redirect_to root_url
    else
      render 'stores/new'
    end
  end
  
  def edit
    @store = Store.find(params[:id])
  end
  
  def update
    @store = Store.find(params[:id])
    if @store.update_attributes(store_params)
      flash[:success] = "店舗情報が更新されました！"
      redirect_to @store
    else
      render 'edit'
    end
  end
  
  def destroy
    @store = Store.find(params[:id])
      @store.destroy
      flash[:success] = "登録店舗が削除されました"
  end
  
  private

    def store_params
      params.require(:store).permit(:name, :adress, :business_hours, :regular_holiday,
                                   :description, :picture)
    end
end
