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
    @userInfo.save
  end
  
  # 会社名の検索トップページ（予定）
  def companysearch
    
    companys = CompaniesInfo.all
    @companys_for_options = Hash.new
    companys.each do |company|
      @companys_for_options.store(company.company_name, company.id)
    end
    
    # post通信が行われた時、会社名検索を行い、結果を配列に格納して送る
    if request.post? then
      @company = CompaniesInfo.where "company_name like ?",'%' + params[:find] + '%'
    # 仮で何も入力されなければ全件表示されるようにしておく
    else
      # @company = CompaniesInfo.all
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
      params.require(:users_info).permit(:user_name, :address, :age, :job_m, :job_m_id,
            :position_m_id, :password)
    end
    
end
