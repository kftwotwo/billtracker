$(document).on 'turbolinks:load', ->
  $('.ui.form').form fields:
    email:
      identifier: 'email'
      rules: [
        {
          type: 'empty'
          prompt: 'Please enter your email'
        }
        {
          type: 'email'
          prompt: 'Please enter a valid email'
        }
      ]

    password:
      identifier: 'password'
      rules: [
        {
          type: 'empty'
          prompt: 'Please enter a password'
        }
        {
          type: 'minLength[8]'
          prompt: 'Your password must be at least {ruleValue} characters'
        }
      ]

