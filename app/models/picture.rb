class Picture < ActiveRecord::Base
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_attached_file :image, {

      :styles => {

          :medium => ["128x128#", :png]

      }
  }
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
end
