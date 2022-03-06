# frozen_string_literal: true

class Payer
  attr_accessor :document_number, :name

  def initialize(document_number, name)
    @document_number = document_number
    @name = name
  end
end
