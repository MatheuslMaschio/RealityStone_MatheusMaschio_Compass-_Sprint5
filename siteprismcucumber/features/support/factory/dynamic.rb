require 'faker'

module Factory
    class Dynamic
        def self.user_for_registering
            {
                email: '1234@teste.com',
                message: 'Welcome to your account'
            }
        end
    end
end
