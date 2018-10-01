class StoresController < ApplicationController
  def new
    @store = Store.new
    @shopId = Shop.find_by(id: params['id'])
  end

  def index
    
  end

  def create
    store = Shop.new(permit)
    if store.save
      @msg = 'valores salvos'
    else
      @msg = shop.errors.messages
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

private

  def permit
    params['shop'].permit(:name, :address)
    params['store'].permit(:name, :floor, :idshopping)
  end

end
