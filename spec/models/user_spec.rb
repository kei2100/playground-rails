require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#authenticate' do
    let(:password) { SecureRandom.alphanumeric(8) }
    let(:input_password) {}
    let(:user) { create(:user, user_id: 'bob', name: 'bob', password: password) }
    subject { user.authenticate(input_password) }

    context 'input ok' do
      let(:input_password) { password }

      it { is_expected.to be_truthy }
    end

    context 'input ng' do
      let(:input_password) { password + 'a' }

      it { is_expected.to be_falsey }
    end
  end

  describe 'duplicate user_id' do
    before do
      create(:user, user_id: 'bob', name: 'bob', password: 'testtest')
    end

    subject do
      create(:user, user_id: 'bob', name: 'bob', password: 'testtest')
    end

    it { expect { subject }.to raise_error(ActiveRecord::RecordInvalid) }
  end
end