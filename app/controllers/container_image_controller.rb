class ContainerImageController < ApplicationController
  include ContainersCommonMixin

  before_action :check_privileges
  before_action :get_session_data
  after_action :cleanup_action
  after_action :set_session_data

  def show_list
    @no_checkboxes = true
    process_show_list
  end

  private ############################

  def controller_name
    "container_image"
  end

  def display_name
    "Container Images"
  end
end
