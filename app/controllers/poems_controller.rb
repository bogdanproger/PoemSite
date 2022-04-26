class PoemsController < ApplicationController
def index
  @poems = Poem.all
end

def new
  @poems = Poem.new
end

def create
  @poems = Poem.new poem_params
  if @poems.save
    redirect_to poems_path
  else render :new
  end
end

def edit
  @poem = Poem.find_by id: params[:id]
end

private

def poem_params
  params.require(:poem).permit(:title, :body)
end
end