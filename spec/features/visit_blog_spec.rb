require 'rails_helper'

describe 'Visit blog' do
    it 'allows visitor to view articles' do
        visit '/'
        click_link_or_button 'My Blog'
        expect(page).to have_text('Listing articles')
    end
end