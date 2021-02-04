class PostImage < ApplicationRecord
  
  belongs_to :user # 単数形！！
  attachment :image
  has_many :post_comments, dependent: :destroy
  
end

