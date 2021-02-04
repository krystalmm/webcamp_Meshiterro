class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    # @userに関連付けられた投稿（.post_images）のみ@post_imagesに渡される！！
    @post_images = @user.post_images.page(params[:page]).reverse_order
  end

end
