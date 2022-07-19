require_relative '../sections/header_sections'

module Pages
    class Login < SitePrism::Page
        set_url '?controller=authentication&back=my-account'

        element :error_message, '[class="alert alert-danger"] li'
        element :input_email, '[class="form-group"] #email'
        element :input_password, '[class="form-group"] #passwd'
        element :btn_login, '[id="SubmitLogin"]'
        element :msg_ok, '[class="info-account"]'
        element :email_cadastro, '[id="email_create"]'
        element :btn_cadastro, '[id="SubmitCreate"]'
        element :formulario, '[id="account-creation_form"]'
        element :btn_genero, '[id="id_gender2"]'
        element :primeiro_nome, '[id="customer_firstname"]'
        element :ultimo_nome, '[id="customer_lastname"]'
        element :registrar_email_form,'[id="email"]'
        element :registrar_senha_form, '[id="passwd"]'
        element :registrar_primeiro_nome__endereco, '[id="firstname"]'
        element :registrar_ultimo_nome_endereco, '[id="lastname"]'
        element :registrar_endereco, '[id="address1"]'
        element :registrar_cidade, '[id="city"]'
        elements :registrar_estado, '[name="id_state"] [value]'
        element :cep, '[id="postcode"]'
        element :telefone, '[id="phone_mobile"]'
        element :btn_register_submit, '[id="submitAccount"]'
    
         
        def login(email,senha)
           input_email.set email
           input_password.set senha
           btn_login.click
        end

        def preenche_formulario()
            primeiro_nome.set Factory::Dynamic.dynamic_data[:primeiro_nome]
            ultimo_nome.set Factory::Dynamic.dynamic_data[:ultimo_nome]
            registrar_email_form.set Factory::Dynamic.dynamic_data[:registrar_email]
            registrar_senha_form.set Factory::Dynamic.dynamic_data[:registrar_senha]
            registrar_primeiro_nome__endereco.set Factory::Dynamic.dynamic_data[:primeiro_nome]
            registrar_ultimo_nome_endereco.set Factory::Dynamic.dynamic_data[:ultimo_nome]
            registrar_endereco.set Factory::Dynamic.dynamic_data[:rua]
            registrar_cidade.set Factory::Dynamic.dynamic_data[:cidade]
            registrar_estado[rand(1..50)].click
            cep.set Factory::Dynamic.dynamic_data[:cep]
            telefone.set Factory::Dynamic.dynamic_data[:telefone]
            

        end   

    end
end
