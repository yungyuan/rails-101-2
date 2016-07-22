class WelcomeController < ApplicationController
  def index
    flash[:notice] = "你好！北京！"
    flash[:alert] = "晚安！"
    flash[:warning] = "警告！！！"
  end
end
