class StaticPagesController < ApplicationController
  def about
  end
  
  def home
    @messages = Message.all
  end
  
end
