class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :reject_action, :except => [:index, :show, :list]

  def reject_action
    redirect_to :back, notice: 'The action is not permitted.'
  end


end
