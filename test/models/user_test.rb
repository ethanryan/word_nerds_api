require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
    puts "the truth is true"
  end

  test "math" do
    assert 2 + 2 === 4, "your math is wrong"
    puts "your math is correct"
  end

  test "user should be valid" do
    user = User.new(name: "frank the tank", password: "dragon123")
    assert user.valid?
    puts "user is valid"
  end

  test "name should be present" do
    user = User.new(name: "  ")
    assert_not user.valid?, "username is empty string"
    puts "username is present"
  end

  test "password should be present" do
    user = User.new(password: "  ")
    assert_not user.valid?, "password is empty string"
    puts "password is present"
  end

end
