class SandwichesController < ApplicationController
	#it's used for API instead of authenticity_token.
	#It says something like: don't look for authenticity token.
	protect_from_forgery with: :null_session
end
