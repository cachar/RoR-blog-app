require 'rails_helper'

RSpec.describe Article, type: :model do
    subject(:article) { Article.create!(title: 'Korra') }

    it { should validate_presence_of(:title) }

end