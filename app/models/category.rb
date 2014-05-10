class Category < ActiveRecord::Base
  has_many :article_categorys
  has_many :articles, :through => :article_categorys


  validates :category, presence: true
  def title
    "#{self.category}"
  end

end
