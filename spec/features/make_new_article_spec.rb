require 'rails_helper'

describe 'Create new article' do
    it 'allows visitor to see the form to make a new article' do
        visit '/articles'
        click_link_or_button 'New article'

        expect(page).to have_text('New Article')
    end


    it 'allows the visitor to make a new article' do
        visit '/articles/new'
        fill_in 'Title', with: 'Star Trek'
        fill_in 'Text', with: 'To Boldly Go Where No One Has Gone Before'

        expect do
            click_link_or_button 'Create Article'
        end.to change { Article.count }.by(1)
    end

end