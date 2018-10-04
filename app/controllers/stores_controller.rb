class StoresController < ApplicationController
  def new
    @store = Store.new
  end

  def index
    
    @shopId = Shop.find_by(id: params['id'])
    @store = Store.where(idshopping: @shopId.id)
    
  end

  def showOne
    @storeId = Store.find_by(id: params['id'])
  
  end

  def create
     store = Store.new(permit)
    if store.save
      @msg = 'valores salvos'
    else
      @msg = store.errors.messages
    end
  end

  def edit
    @storeId = Store.find_by(id: params['id'])
  end

  def update
    store = Store.find_by(id: params['id'])
    if store.update_attributes(permit)
      @msg = 'valores salvos'
    else 
      @msg = shop.errors.messages
    end
  end

  def destroy
     store = Store.find_by(id: params['id'])
    if store.destroy
      @msg = 'Ela foi mandada a sete palmos abaixo da tera!!!!!'
    else 
      @msg = shop.errors.messages
    end
  end



  private

    def permit
      params['shop'].permit(:name, :address)
      params['store'].permit(:name, :floor, :idshopping)
    end

  end
