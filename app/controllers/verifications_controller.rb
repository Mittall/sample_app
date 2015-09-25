class VerificationsController < ApplicationController

  before_filter :get_user

  def create
    @user.update_attribute(:verified, true)
    # You could send another message acknowledging the verificaton
    head :ok
  end

  def show
  	render :create
  end

  private
  def get_user
    unless @user = User.find_by_phone(params['From'])
      head :not_found
    end
  end

end
