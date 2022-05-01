class CommentsController < ApplicationController
  before_action :find_poem!
  def create
    @comment = @poem.comments.build comment_params

    if @comment.save
      flash[:success] = "Comment created!"
      redirect_to poem_path(@poem)
    else
      render 'poems/show'
    end
  end

private

def comment_params
  params.require(:comment).permit(:body)
end

  def find_poem
    @poem = Poem.find params[:poem_id]
  end
end

