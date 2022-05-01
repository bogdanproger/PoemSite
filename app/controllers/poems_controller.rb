class PoemsController < ApplicationController
before_action :find_poem, only: %i[show destroy edit update]
  def edit
    
  end

  def update
    if @poem.update poem_params
      flash[:success] = "Poem Updated!"
      redirect_to poems_path
    else render :edit
    end
  end
def destroy
 
 @poem.destroy
 flash[:success] = "Poem Destroyed!"

 redirect_to poems_path
end

def show
 @comment = @poem.comments.build
 @comments = Comment.order created_at: :desc
end

def index
  @poems = Poem.all
end

def new
  @poem = Poem.new
end

def create
  @poem = Poem.new poem_params
  if @poem.save
    flash[:success] = "Poem Created!"
    redirect_to poems_path
  else render :new
  end
end


private

def poem_params
  params.require(:poem).permit(:title, :body)
end

def find_poem
  @poem = Poem.find params[:id]

end
end