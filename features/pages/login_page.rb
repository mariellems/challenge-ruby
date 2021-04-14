module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :link_sign_in, '.login'
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd'
    element  :link_forgot_password, ''
    element  :btn_sign_in, '#SubmitLogin'
    element  :breadcrumb_account, 'a.account'
    element  :alert_message_authentication_failed, '.alert.alert-danger'

    def clicar_link_login
      link_sign_in.click
    end

    def informar_email(email)
      input_login_email.set(email)
    end

    def informar_senha(pass)
      input_login_password.set(pass)
    end

    def botao_login
      btn_sign_in.click
    end
  end
end
