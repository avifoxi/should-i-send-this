class Comment < ActiveRecord::Base
  belongs_to :user

  belongs_to :version
  has_one :document, through: :version

  scope :display_order, -> { order(created_at: :desc) }
end
