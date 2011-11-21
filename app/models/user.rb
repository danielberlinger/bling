class User < ActiveRecord::Base
  include Guestlist
  
  def self.enable(first, last, github_login, encrypted_gihub_token)
    u = self.authenticate(github_login, encrypted_gihub_token)
    u.update_attributes(:first_name => first, :last_name => last) unless u.nil?
  end
end