class UsersInfoController < ApplicationController
  def new
  end
  
  def mypage
    @user = UsersInfo.find(params[:id])
  end
  
  def dummytop
    render html: "dummytop"
  end
end
