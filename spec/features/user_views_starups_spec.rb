require 'spec_helper'

feature 'User all the startups' do
  scenario 'show all the startups of a certain user' do
    user = create(:user)
    create(:location, name: 'Mahoney', user: user)
    create(:location, name: 'Coco', user: user)

    sign_in_as(user)
    expect(page).to have_content 'Mahoney'
    expect(page).to have_content 'Coco'
  end

end