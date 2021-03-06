@AuthSignInPage = React.createClass
  render: ->
    <div className='auth-sign-in-page'>
      <div className='ui container stackable grid'>

        <div className='six wide column'>
          <div className='customer-logo' />
        </div>

        <div className='eight wide column'>
          <div className='product-logo' />
          <div className='ui segment'>
            <div className='head'>
              <i className='icon sign in' />
              <span className='sign-in link'>普通登录</span>
              <a href={@props.data.manager_sign_in_url} style={float: 'right'}>
                <i className='icon setting' /> 管理登录
              </a>
            </div>
            <SignInForm submit_url={@props.data.common_submit_url} />
          </div>
        </div>

      </div>
    </div>

@AuthManagerSignInPage = React.createClass
  render: ->
    <div className='auth-sign-in-page manager'>
      <div className='ui container stackable grid'>

        <div className='six wide column'>
          <div className='customer-logo' />
        </div>

        <div className='eight wide column'>
          <div className='product-logo' />
          <div className='ui segment'>
            <div className='head'>
              <i className='icon setting' />
              <span className='sign-in link'>管理登录</span>
              <a href={@props.data.common_sign_in_url} style={float: 'right'}>
                <i className='icon sign in' /> 普通登录
              </a>
            </div>
            <SignInForm submit_url={@props.data.manager_submit_url} admin_auth />
          </div>
        </div>

      </div>
    </div>