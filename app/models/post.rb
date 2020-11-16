class Post < ApplicationRecord
		validates :name, :presence => true
		validates :title, :presence => true,
											:length => { :minimum => 5 }
# //зависимость
		has_many :comments, :dependent => :destroy
		has_many :likes, dependent: :destroy

    belongs_to :user
		belongs_to :category

		mount_uploader :image, ImageUploader
end
