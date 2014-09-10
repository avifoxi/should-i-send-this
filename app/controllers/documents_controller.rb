class DocumentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @documents = Document.publicly_available.order(created_at: :desc)
  end

  def create
    @document = Document.new(document_params)
    @version = Version.new(version_params)

    unless @document.valid?
      flash[:notice] = 'Error'
      render 'new' and return
    end

    if version_params_complete
      current_user.documents << @document
      @document.versions << @version
      redirect_to document_path(@document)
    else
      flash[:notice] = 'Error'
      render 'new'
    end
  end

  def new
    @document = Document.new()
    @version = Version.new()
  end

  def edit
  end

  def show
    document = Document.find(params[:id])
    version = document.versions.last
    redirect_to version_path(version)
  end

  def update
    document = Document.find(params[:id])

    if params[:document][:version]
      document.versions.create(version_params)
      redirect_to document_path(document) and return
    end

    document.update(privacy: params[:document][:privacy] == '1' )
    redirect_to user_path(current_user)
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    redirect_to user_path(current_user)
  end

  private

  ## TODO:  The below methods are pretty hacky, but achieve similar ends to strong params
  # is there a better WORKING way to get at nested resources in form submission?

  def document_params
    title = params[:document][:title]
    context = params[:document][:context]
    privacy = ( params[:document][:privacy] == '1' )
    {title: title, context: context, privacy: privacy }
  end

  def version_params
    content = params[:document][:version][:content]
    {content: content}
  end

  def doc_params_complete
    (document_params[:title] != '') && (document_params[:context] != '') && (document_params[:privacy] != nil)
  end

  def version_params_complete
    version_params[:content] != ''
  end

end


# BELOW IS A DEVELOPMENT OBJECT TO AVOID REPEATED API CALLS
class FakeAlchemist
  attr_reader :keywords, :concepts, :sentiment

  def initialize
    @keywords = ["hot dogs", "salty", "buns", "mention", "thoughts", "MIND", "buns."]
    @concepts = ["2000 albums"]
    @sentiment = 1
  end

end

