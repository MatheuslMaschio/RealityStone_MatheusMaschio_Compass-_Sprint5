require_relative '../sections/header'

module Pages
    class Login < SitePrism::Page
        set_url '?controller=authentication&back=my-account'

        #element :sign_in, 'div.header_user_info'
        element :error_message, '[class="alert alert-danger"] li'
        element :input_email, '[class="form-group"] #email'
        element :input_password, '[class="form-group"] #passwd'
        element :btn_login, '[id="SubmitLogin"]'
        element :msg_ok, '[class="info-account"]'

        def login(email,senha)
           input_email.set email
           input_password.set senha
           btn_login.click
        end
    end
end
