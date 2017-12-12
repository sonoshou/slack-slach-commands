require './my_account'

class Helper
  def self.check_token(token)
    MyAccount::SLACK_API_TOKEN == token ? true : false
  end
end
