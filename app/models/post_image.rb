class PostImage < ApplicationRecord
  
  belongs_to :user # 単数形！！
  attachment :image
  
end
