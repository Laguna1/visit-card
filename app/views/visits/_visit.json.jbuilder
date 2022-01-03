# frozen_string_literal: true

json.extract! visit, :id, :visitor_who, :visit_to, :problem, :created_at, :updated_at
json.url visit_url(visit, format: :json)
