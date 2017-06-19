class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :chat_rooms, dependent: :destroy
	has_many :messages, dependent: :destroy

	# Remove later, user user email as user name for now.
	def name
  	email.split('@')[0]
	end
end
