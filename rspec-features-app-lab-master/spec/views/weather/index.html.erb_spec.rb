require 'rails_helper'

RSpec.describe "weather/index.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"
end


specify "user login is remembered across browser restarts" do
  log_in_as_user
  should_be_logged_in
  #browser restart = session cookie is lost
  expire_cookies
  should_be_logged_in
end