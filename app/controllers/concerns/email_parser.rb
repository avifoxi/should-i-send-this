module EmailParser

  def self.sender(params)
   params['sender']
  end

  def self.subject(params)
    params['subject']
  end

  def self.content(params)
    params['stripped-text']
  end
end
