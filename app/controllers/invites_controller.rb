class InvitesController < ApplicationController
	before_action :set_todo, only: [:show, :update, :destroy]
	
	include Response
	
	def index 
		@invites = Invite.search(params[:search])
		json_response(@invites)
	end

	def create
    	@invite = Invite.create!(invite_params)
    	json_response(@invite, :created)
  	end

    def show
    	json_response(@invite)
  	end

  	def update
    	@invite.update(invite_params)
    	head :no_content
  	end

  	def destroy
    	@invite.destroy
    	head :no_content
 end

  private

  	def todo_params
    	# whitelist params
    	params.permit(:name, :search)
  	end

	def set_invite
    	@invite = Invite.find(params[:id])
  	end
end
