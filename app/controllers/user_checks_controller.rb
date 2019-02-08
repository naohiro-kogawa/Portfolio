class UserChecksController < ApplicationController
  
  def check
    @title = "ログイン確認"
    @user = User.find(params[:id])
  end
end
