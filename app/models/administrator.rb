class Administrator < User
  ## Relationships
  belongs_to :enterprise

  private
  def assign_default_role
    self.add_role(:admin) if self.roles.blank?
  end
end
