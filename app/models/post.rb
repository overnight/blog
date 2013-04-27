class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title

  validates :name, :presence =>true
  validates :title, :presence =>true,
  					:length =>{:minimum =>5}
  validates :content, :length =>{:maximum =>300}

  has_many:comments, :dependent => :destroy
end
