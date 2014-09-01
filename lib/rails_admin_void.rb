require "rails_admin_void/engine"

module RailsAdminVoid
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class Void < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :object_level do
          true
        end
        register_instance_option :controller do
          proc do
            @object.void!
            flash[:notice] = "You have cancelled transaction ID: #{@object.transaction_id}."
            redirect_to back_or_index
          end
        end
      end
    end
  end
end

