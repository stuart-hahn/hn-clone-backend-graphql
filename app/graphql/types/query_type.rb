module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # Queries are just represented as fields
    # "all_links" will be camelCased to "allLinks"
    field :all_links, [LinkType], null: false

    # This method is invoked whenever an "all_links" field is being resolved
    def all_links
      Link.all
    end
  end
end
