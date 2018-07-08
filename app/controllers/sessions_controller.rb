class SessionsController < ApplicationController
   def new
    
   end 
   def create
       user = UsersInfo.find_by(address: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    #if user && user.(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      
      #redirect_to controller:users_info, action:mypage, params:{'id': user.id}
      render'afterLogin'
    else
      # エラーメッセージを作成する
      flash.now[:notice] = "ログインID・パスワードが違います。"
      render 'new'
    end

   end

   def destroy
   end
   
end
