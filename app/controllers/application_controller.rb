# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  helper_method :current_user
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  protected
  
  def record_not_found(error)
    render :file => File.join(RAILS_ROOT, 'public', '404.html'), :status => 404
    # notify_hoptoad error
  end

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

  def require_user
    unless current_user
       redirect_to login_path
       # raise ActiveRecord::RecordNotFound
       # return false
    end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
