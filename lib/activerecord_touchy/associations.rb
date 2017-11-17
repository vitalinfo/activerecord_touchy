module ActiverecordTouchy
  module Associations
    def self.included(base)
      class << base
        prepend(ClassMethods)
      end
    end

    module ClassMethods
      def has_many(name, scope = nil, options = {}, &extension)
        touch = (scope.is_a?(Hash) ? scope : options).delete(:touch)
        result = super

        if touch
          after_commit do
            public_send(name).update_all(updated_at: Time.now.utc)
          end
        end

        result
      end

      def has_one(name, scope = nil, options = {})
        touch = (scope.is_a?(Hash) ? scope : options).delete(:touch)
        result = super

        if touch
          after_commit do
            public_send(name)&.touch
          end
        end

        result
      end
    end
  end
end
