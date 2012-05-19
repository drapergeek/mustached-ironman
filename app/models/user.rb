class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :for_me, foreign_key: :recommendee_id, class_name: "MovieRecommendation"
  has_many :from_me, foreign_key: :recommender_id, class_name: "MovieRecommendation"
end
