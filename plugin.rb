# frozen_string_literal: true

# name: discourse-mask-ip
# about: mask ip_address and registration_ip_address
# meta_topic_id: TODO
# version: 0.0.1
# authors: Jay Pfaffman
# url: TODO
# required_version: 2.7.0

enabled_site_setting :mask_ip_enabled

module ::MaskIpModule
  PLUGIN_NAME = "discourse_mask_ip"
  MASK_ADDRESS = "255.255.255.255"
end

require_relative "lib/mask_ip_module/engine"
require_relative "lib/mask_ip_module/override_user"

after_initialize do
  reloadable_patch do |plugin|
    User.class_eval { prepend MaskIpModule::UserExtension}
  end
  
end
