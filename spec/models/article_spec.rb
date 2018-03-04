require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'just a test for factory bot' do
    let(:an_article) { create(:article) }
    subject { Article.find_by(id: an_article.id) }
    it { is_expected.not_to be_nil }
  end
end
