class PostImage < ApplicationRecord
  
  belongs_to :user # 単数形！！
  attachment :image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  # 引数で渡されたユーザーIDがFavoriteテーブル内に存在するか調べる！
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end



