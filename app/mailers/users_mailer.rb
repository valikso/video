class UsersMailer < ApplicationMailer
  default from: "valikstest@gmail1111.com",
          template_path: 'mailers/users'
  def user_destroyed(user)
    @user = user
    mail(to: 'valikdrn@gmail.com',
    subject: 'User destroyed')
  end
end
