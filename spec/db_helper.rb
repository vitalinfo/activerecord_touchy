require 'sqlite3'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

ActiveRecord::Schema.define(version: 1) do
  create_table :users, force: true do |t|
    t.column :email, :string
    t.timestamps null: false
  end

  create_table :profiles, force: true do |t|
    t.references :user, foreign_key: true, index: true
    t.timestamps null: false
  end

  create_table :articles, force: true do |t|
    t.references :user, foreign_key: true, index: true
    t.timestamps null: false
  end
end

class User < ActiveRecord::Base
  has_many :articles, touch: true
  has_one :profile, touch: true
end

class Profile < ActiveRecord::Base
end

class Article < ActiveRecord::Base
end
