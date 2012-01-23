module Balder
  class Admin::ApplicationController < ApplicationController
  
	before_filter :require_role_admin

  end
  end
