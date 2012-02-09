module Balder
  class Admin::ApplicationController < Balder::ApplicationController
  
	  before_filter :require_role_admin

  end
end
