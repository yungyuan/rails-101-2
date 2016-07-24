class Account::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts
  end

  def update
    if @group.update(group_params)
      redirect_to groups_path, notice: "修改成功"
    else
      render :edit
    end
  end

  def destroy
    @posts.destroy
    #redirect_to groups_path, alert: "討論組已刪除"
  end

end
