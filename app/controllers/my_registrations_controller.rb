class MyRegistrationsController < Devise::RegistrationsController

  after_action :my_create, only: %i[ create ]

  def my_create
    # super
    if @user.persisted?
      UserMailer.acknowledge_mail(@user.email).deliver
    end
  end

end
