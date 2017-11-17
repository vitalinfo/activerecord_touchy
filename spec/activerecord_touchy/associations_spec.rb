require 'spec_helper'
require 'db_helper'

RSpec.describe ActiverecordTouchy::Associations do
  let!(:user) { User.create }
  before do
    user.articles.create
    user.create_profile
  end

  context 'when update' do
    it 'should change updated_at for has_one' do
      expect(user.profile.updated_at).to be_present
      expect { user.update(email: 'test@example.com') }.to(change { user.profile.updated_at })
    end

    it 'should change updated_at for has_many' do
      expect(user.articles.first.updated_at).to be_present
      expect { user.update(email: 'test@example.com') }.to(change { user.articles.first.updated_at })
    end
  end
end
