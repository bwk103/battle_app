describe "Testing infrastructure", :type => :feature do
  it "checks the homepage is working" do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
