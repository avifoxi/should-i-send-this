class Version < ActiveRecord::Base
  validates :document_id, presence: true
  validates :content, presence: true

  after_validation :assign_version_number

  belongs_to :document
  has_many :comments

  private

  def assign_version_number
    document = Document.find(self.document_id)
    if document.versions.empty?
      self.version_number = 1
    else
      self.version_number = ( document.versions.maximum(:version_number) + 1 )
    end
  end

end
