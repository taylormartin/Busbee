class FoldersController < ApplicationController

  def index
    @folders = current_user.folders
  end

  def show
    @folder = Folder.find params[:id]
  end

end
