class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :post_images, dependent: :destroy # 複数形！ dependent: :destroyを指定すると、Userが消えたときpost_imageも消える！！
  has_many :post_comments, dependent: :destroy
  
end
