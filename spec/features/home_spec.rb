require 'rails_helper'

describe "GET '/users' - from API", :type => :feature do
  it 'checks the first user in the database' do
    visit('http://localhost:3000/users')
    expect(page).to have_content("bob")
    puts 'cool, bob is in the house!'
  end
end


describe "GET Google homepage", :type => :feature do
  it 'welcomes the user to Google' do
    visit('https://www.google.com/')
    expect(page.title).to have_content("Google")
    puts "cool, Google's title is 'Google' "
  end
end


describe "GET '/' - homepage title", :type => :feature do
  it 'welcomes the user to Word Nerds' do
    visit('http://localhost:3002/')
    expect(page.title).to have_content("Word Nerds")
    puts 'cool, the homepage title is Word Nerds'
  end
end


describe "GET '/' - homepage", :type => :feature do
  it 'welcomes the user to Word Nerds' do
    visit('http://localhost:3002/')
    expect(page).to have_content("Word Nerds")
    puts 'cool, the homepage has words on it'
  end
end


describe "GET '/login", :type => :feature do
  it 'shows a login form' do
    visit('http://localhost:3002/login')
    expect(page).to have_content("Login")
    puts 'cool, the login form page says Login'
  end
end
