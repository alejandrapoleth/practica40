class PagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def paginax
  	@user = User.new
  end
 end

#forbidden attributes

