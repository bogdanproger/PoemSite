class PoemsController < ApplicationController

  def edit
    @poem = Poem.find_by id: params[:id]
  end

  def update
    @poem = Poem.find_by id: params[:id]
    if @poem.update poem_params
      flash[:success] = "Poem Updated!"
      redirect_to poems_path
    else render :edit
    end
  end
def destroy
 @poem = Poem.find_by id: params[:id]
 @poem.destroy
 flash[:success] = "Poem Destroyed!"

 redirect_to poems_path
end

def show
  @poem = Poem.find_by id: params[:id]
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
end