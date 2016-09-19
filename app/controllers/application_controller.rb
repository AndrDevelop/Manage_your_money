class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def americanDateFormatToSqlFormat date
  	if date.empty?
  		return nil
  	end
  	splittedDate  = date.split('/')
  	sqlDateFormat = DateTime.new(splittedDate[2].to_i,splittedDate[0].to_i,splittedDate[1].to_i)
  	return sqlDateFormat.to_formatted_s(:db)
  end
end
