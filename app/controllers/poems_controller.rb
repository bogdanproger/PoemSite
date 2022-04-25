class PoemsController < ApplicationController
def index
  @poems = Poem.all
end
def new
@poems = Poem.new
end
end