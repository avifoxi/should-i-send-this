class EmailParser 
	
	def initialize(params)
		@sender = params['sender']
		@subject = params['subject']
		@content = params['stripped-text']
		@user = nil
		@document = nil
		@version = nil
	end

  def create_document_version_for_user  	
  	return unless find_user
 
  	save_document

  	if @document
  		save_version
  	end
  	return true
  end

  private

  def save_document
		document = Document.new(title: @subject, context: @subject, privacy: true)
		if document.save
			@document = document
		end
  end

  def save_version
  	@version = Version.new(content: @content)
  	@document.versions << @version
  	@user.documents.last.versions << @version
  end

  def find_user
  	@user = User.find_by_email(@sender)
  end

end
