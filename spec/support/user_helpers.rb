require "faker"
require "factory_bot_rails"

module UserHelpers
  def create_user
    FactoryBot.create(:user,
                      username: Faker::Movies::HarryPotter.character,
                      email: Faker::Internet.email,
                      password: "123456")
  end

  def build_user
    FactoryBot.build(:user,
                     username: Faker::Movies::HarryPotter.character,
                     email: Faker::Internet.email,
                     password: "123456")
  end
end
