class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # after_create :send_admin_mail
  # def send_admin_mail
  #   UserMailer.acknowledge_mail(self.email).deliver
  # end
  after_create :log_user_details


  # Existing code ...


  def log_user_details
    # binding.pry
    UserLoggerJob.perform_now(self)
  end
end
