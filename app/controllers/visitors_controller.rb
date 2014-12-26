class VisitorsController < ApplicationController
   
   def new
   	  Rails.logger.debug 'DEBUG: entering VisitorsController.new method'
      @owner = Owner.new
      Rails.logger.debug "DEBUG: Owner name is  + #{@owner.name}"
      flash.now[:notice] = "Welcome #{@owner.name} !" 
      flash.now[:alert] = 'My birtday is soon.'
      flash.now[:notice] = 'This is an Error message'
      #render 'visitors/new'
   end
   
end