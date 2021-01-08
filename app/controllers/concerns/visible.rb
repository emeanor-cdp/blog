module Visible
  extend ActiveSupport::Concern

  included do
    VALID_STATUSES = ['public', 'private', 'archived']
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  def archived?
    status == 'archived'
  end
end
