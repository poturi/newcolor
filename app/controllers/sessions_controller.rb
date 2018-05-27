class SessionsController < ApplicationController
   def new
    
   end 
   def create
       user = UsersInfo.find_by(address: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    #if user && user.(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      render 'success'
    else
      # エラーメッセージを作成する
      render 'new'
    end
      render 'new'
   end

   def destroy
   end
end
