class User < ActiveRecord::Base
  has_many :articles, depentent: :destroy
  has_secure_password

  def self.confirm
    @user = User.find_by({email: params[:email]})
    @user.try(:authanticate, params[:password])
  end
end
