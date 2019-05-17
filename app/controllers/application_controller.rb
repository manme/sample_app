# frozen_string_literal: true

class ApplicationController < ActionController::Base
  private

  def hash_keys_to_snake_case(hash:)
    hash.each_with_object({}) do |(k, v), mem|
      mem[k.underscore.to_sym] = v
    end
  end
end
