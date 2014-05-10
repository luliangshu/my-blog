class Article < ActiveRecord::Base
  has_many :article_categorys
  has_many :categorys, :through => :article_categorys

  validates :title, presence: true
  validates :content, presence: true
  validates :tag, presence: true
  validates :categorys, presence: true
end
