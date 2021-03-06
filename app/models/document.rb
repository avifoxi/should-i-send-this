class Document < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :user
  has_many :versions
  has_many :comments, through: :versions

  scope :publicly_available, -> { where(privacy: false) }
  scope :display_order,      -> { order(created_at: :desc) }
end
