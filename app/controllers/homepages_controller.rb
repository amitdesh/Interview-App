class HomepagesController < ApplicationController
    skip_before_action :authorize_interviewee, only: [:index]

    def index

    end

end
