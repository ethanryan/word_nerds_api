require 'rails_helper'

describe User do
   context "When testing, the User class" do

      it "should: have a valid name and password" do
         user = User.new({name: "frank the tank", password: "dragon123"})
         expect(user).to have_attributes(:name => "frank the tank", :password => "dragon123")
         puts "valid name and password!"
      end

      it "should: have an error when name is an empty string" do
         user = User.new({name: "", password: "bobby"})
         expect(user).not_to be_valid
         puts "user isn't valid when name is empty string"
      end

      it "should: have an error when name is blank" do
         user = User.new({name: "     ", password: "dragon123"})
         expect(user).not_to be_valid
         puts "user isn't valid when name is blank"
      end

      it "should: have an error when password is blank" do
         user = User.new({name: "hank hill", password: "    "})
         expect(user).not_to be_valid
         puts "user isn't valid when password is blank"
      end

      puts "User spec passes!"
   end
end
