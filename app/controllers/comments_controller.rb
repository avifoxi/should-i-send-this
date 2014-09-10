class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    version = Version.find(params[:id])

    comment = Comment.new(comment_params)
    comment.version = version
    comment.user = current_user
    comment.save

    redirect_to document_path(version.document)
  end

  def new
    @version = Version.find(params[:id])
    @comment = Comment.new
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
