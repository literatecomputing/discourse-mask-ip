module MaskIpModule
  module UserExtension
    def self.update_ip_address!(user_id, new_ip:, old_ip: )
      puts "update_ip_address! #{user_id} #{new_ip} #{old_ip} --refusing to update"
    end

    def update_ip_address!(ip_address)
      # Your custom implementation goes here
      puts "not going to update!: #{ip_address}"
      #super(MaskIpModule::MASK_ADDRESS)
    end

    def self.my_test
      puts "my_test"
    end
  end
end



