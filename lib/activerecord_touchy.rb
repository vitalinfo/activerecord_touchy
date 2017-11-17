require 'active_record'
require 'activerecord_touchy/version'
require 'activerecord_touchy/associations'

module ActiverecordTouchy
end

# Extend ActiveRecord::Base with touchy associations
ActiveRecord::Base.send :include, ActiverecordTouchy::Associations
