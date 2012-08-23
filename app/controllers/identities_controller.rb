class IdentitiesController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  
  def new
    @identity = env['omniauth.identity']
  end
end
