require 'dynamic_sunspot_search/translator/with'

module DynamicSunspotSearch
  module Translator
    module FieldList
      def self.apply(query_object, field_list)
        return unless field_list.present?
        query_object.tap do |search|
          search.field_list *field_list
        end
      end
    end
  end
end
