module GraphqlGraceful
  module Services
    module Context
      CONTEXT_VALUES = %i[
        device
        locale
        timezone
        header_role
        current_user
        current_profile
      ].freeze

      CONTEXT_VALUES.each do |value|
        define_method(value) { context[value] }
      end
    end
  end
end
