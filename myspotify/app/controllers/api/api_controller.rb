class Api::ApiController < ApplicationController
  skip_before_filter :verify_authenticity_token

  before_action :check_token

  private
    def check_token
      if Token.where(uid: request.headers['token']).count == 0
        # Token n'existe pas dans la db
        render json: {authorized: false, message: 'You can\'t access'},
                      unauthorized: true
      end
    end
end
