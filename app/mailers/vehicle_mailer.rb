class VehicleMailer < ApplicationMailer
default from: 'notifications@parkingsystem.com'

 def new_vehicle_email(user)
   @user = user
   if Rails.env == 'development'
     @url = "localhost:3000/users/#{user.id}/vehicles"
   elsif Rails.env == 'production'
     @url = "http://johaps.herokuapp.com/users/#{@user.id}/vehicles"
   end
   mail(to: @user.email, subject: 'New Vehicle Registered.')
 end
end
