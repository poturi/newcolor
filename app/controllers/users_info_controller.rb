class UsersInfoController < ApplicationController
  def new
  end
  
  def mypage
    @userinfo = UsersInfo.all
  end
  
  def dummytop
    render html: "dummytop"
  end
end
