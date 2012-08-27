class StaticPagesController < ApplicationController
  layout "home"
  
  def about
  end
  
  def home
    @messages = Message.limit(10)
  end
  
end
