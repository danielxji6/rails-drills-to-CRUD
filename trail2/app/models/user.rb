class User < ActiveRecord::Base
  has_secure_password
  has_many :articles, dependent: :destroy

  def self.confirm
    @user = User.find_by({email: params[:email]})
    @user.try(:authanticate, params[:password])
  end
end
