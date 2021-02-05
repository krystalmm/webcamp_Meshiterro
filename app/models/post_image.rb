class PostImage < ApplicationRecord
  
  belongs_to :user # 単数形！！
  attachment :image # カラム名（image_idから_idを除く！）
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :shop_name, presence: true
  validates :image, presence: true
  
  # 引数で渡されたユーザーIDがFavoriteテーブル内に存在するか調べる！
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end



