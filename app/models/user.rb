class User < ActiveRecord::Base


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   belongs_to :location
   belongs_to :city, class_name: 'Location'
   belongs_to :area, class_name: 'Location'
end
