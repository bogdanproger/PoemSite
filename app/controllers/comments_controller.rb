class CommentsController < ApplicationController
  before_action :find_poem
  before_action :find_answer, except: :create
  def create
    @comment = @poem.comments.build comment_params

    if @comment.save
      flash[:success] = "Comment created!"
      redirect_to poem_path(@poem)
    else
      @comments = @poem.comments.order created_at: :desc
      render 'poems/show'
    end
  end

  def destroy
    @comment.destroy
    flash[:success] = 'Comment deleted!'
    redirect_to poem_path(@poem)
  end

  def edit
    
  end

  def update
    if @comment.update comment_params
      flash[:success] = "Comment Updated!"
      redirect_to poem_path(@poem)
    else render :edit
    end
  end

 
private

def comment_params
  params.require(:comment).permit(:body)
end

  def find_poem
    @poem = Poem.find params[:poem_id]
  end

  def find_answer
    @comment = @poem.comments.find params[:id]
  end
end

