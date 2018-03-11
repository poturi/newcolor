class UsersInfoController < ApplicationController
  def new
  end
  
  def mypage
    @userInfo = UsersInfo.find(params[:id])
  end
  
  def dummytop
    render html: "dummytop"
  end
end
