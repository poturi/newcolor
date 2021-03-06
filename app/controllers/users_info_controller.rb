class UsersInfoController < ApplicationController
  
  before_action :job, only: [:mypage, :new]
  before_action :position, only: [:mypage, :new]
  
  def new
    @userInfo = UsersInfo.new
  end
  
  def mypage
    @userInfo = UsersInfo.find(params[:id])
  end
  
  def dummytop
    render html: "dummytop"
  end
  
  def create
    @userInfo = UsersInfo.new(user_info_params)
    
    if (@userInfo.save)
      render html: "new"
    else
      render html: "dummytop"
    end
  end
  
  private
  
    def job
       @jobs = JobM.where("is_deleted = 0").pluck(:job_name, :id)
    end
    
    def position
      @positions = PositionM.where("is_deleted = 0").pluck(:position_name, :id)
    end
    
    def user_info_params
      params.require(:users_info).permit( :password, :user_name, :address, :age, :job_m_id,
            :position_m_id, :password_confirmation)
    end
  
end