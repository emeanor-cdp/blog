class CommentsController < ApplicationController
  def create
    # Have to keep track of the article to which the comment is attached.
    @article = Article.find(params[:article_id])
    # Create the comment via its article, so they are automatically associated.
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
