class UsersController < ApplicationController
	respond_to :html, :xml, :json
	inherit_resources
end
