class FoldersController < ApplicationController

  def index
    @folders = current_user.folders
    @folder = Folder.new
  end

  def show
    @folder = current_user.folders.find params[:id]
    @item = Item.new
  end

  def create
    @folder = current_user.folders.new create_params
    if @folder.save
      redirect_to @folder, notice: "Your folder was created, now add some items"
    else
      render :new
    end
  end

  def create_item
    @folder = current_user.folders.find params[:id]
    @item = @folder.items.new create_item_params
    if @item.save
      redirect_to @item, notice: "Your item was created"
    else
      redirect_to root_path, notice: "Item creation fail"
    end
  end

private

  def create_params
    params.require(:folder).permit(:name)
  end

  def create_item_params
    params.require(:item).permit(:name)
  end

end
