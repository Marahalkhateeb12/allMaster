@extends('layouts.app')

@section('content')
<style>
    /* input[type="password"] {
      color: transparent;
    } */
    
    
    
    /*//////////////////////////////////////////////////////////////////
    [ FONT ]*/
    
    @font-face {
      font-family: Poppins-Regular;
      src: url('../fonts/poppins/Poppins-Regular.ttf'); 
    }
    
    @font-face {
      font-family: Poppins-Medium;
      src: url('../fonts/poppins/Poppins-Medium.ttf'); 
    }
    
    @font-face {
      font-family: Poppins-Bold;
      src: url('../fonts/poppins/Poppins-Bold.ttf'); 
    }
    
    @font-face {
      font-family: Poppins-SemiBold;
      src: url('../fonts/poppins/Poppins-SemiBold.ttf'); 
    }
    
    /*//////////////////////////////////////////////////////////////////
    [ RESTYLE TAG ]*/
    
    * {
        margin: 0px; 
        padding: 0px; 
        box-sizing: border-box;
    }
    
    body, html {
        height: 100%;
        font-family: Poppins-Regular, sans-serif;
    }
    
    /*---------------------------------------------*/
    a {
        font-family: Poppins-Regular;
        font-size: 14px;
        line-height: 1.7;
        color: #666666;
        margin: 0px;
        transition: all 0.4s;
        -webkit-transition: all 0.4s;
      -o-transition: all 0.4s;
      -moz-transition: all 0.4s;
    }
    
    a:focus {
        outline: none !important;
    }
    
    a:hover {
        text-decoration: none;
      color: #57b846;
    }
    
    /*---------------------------------------------*/
    h1,h2,h3,h4,h5,h6 {
        margin: 0px;
    }
    
    p {
        font-family: Poppins-Regular;
        font-size: 14px;
        line-height: 1.7;
        color: #666666;
        margin: 0px;
    }
    
    ul, li {
        margin: 0px;
        list-style-type: none;
    }
    
    
    /*---------------------------------------------*/
    input {
        outline: none;
        border: none;
    }
    
    input[type="number"] {
        -moz-appearance: textfield;
        appearance: none;
        -webkit-appearance: none;
    }
    
    input[type="number"]::-webkit-outer-spin-button,
    input[type="number"]::-webkit-inner-spin-button {
        -webkit-appearance: none;
    }
    
    textarea {
      outline: none;
      border: none;
    }
    
    textarea:focus, input:focus {
      border-color: transparent !important;
    }
    
    input:focus::-webkit-input-placeholder { color:transparent; }
    input:focus:-moz-placeholder { color:transparent; }
    input:focus::-moz-placeholder { color:transparent; }
    input:focus:-ms-input-placeholder { color:transparent; }
    
    textarea:focus::-webkit-input-placeholder { color:transparent; }
    textarea:focus:-moz-placeholder { color:transparent; }
    textarea:focus::-moz-placeholder { color:transparent; }
    textarea:focus:-ms-input-placeholder { color:transparent; }
    
    input::-webkit-input-placeholder {color: #999999;}
    input:-moz-placeholder {color: #999999;}
    input::-moz-placeholder {color: #999999;}
    input:-ms-input-placeholder {color: #999999;}
    
    textarea::-webkit-input-placeholder {color: #999999;}
    textarea:-moz-placeholder {color: #999999;}
    textarea::-moz-placeholder {color: #999999;}
    textarea:-ms-input-placeholder {color: #999999;}
    
    label {
      display: block;
      margin: 0;
    }
    
    /*---------------------------------------------*/
    button {
        outline: none !important;
        border: none;
        background: transparent;
    }
    
    button:hover {
        cursor: pointer;
    }
    
    iframe {
        border: none !important;
    }
    
    
    /*//////////////////////////////////////////////////////////////////
    [ Utility ]*/
    .txt1 {
      font-family: Poppins-Regular;
      font-size: 13px;
      line-height: 1.4;
      color: #999999;
    }
    
    /*//////////////////////////////////////////////////////////////////
    [ login ]*/
    
    .limiter {
      width: 100%;
      margin: 0 auto;
    }
    
    .container-login100 {
      width: 100%;  
      min-height: 100vh;
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      padding: 15px;
      background: #ebeeef;
    }
    
    
    .wrap-login100 {
      width: 670px;
      background: #fff;
      border-radius: 10px;
      overflow: hidden;
      position: relative;
    }
    
    /*==================================================================
    [ Title form ]*/
    .login100-form-title {
      width: 100%;
      position: relative;
      z-index: 1;
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      flex-wrap: wrap;
      flex-direction: column;
      align-items: center;
    
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
    
      padding: 70px 15px 74px 15px;
    }
    
    .login100-form-title-1 {
      font-family: Poppins-Bold;
      font-size: 30px;
      color: #fff;
      text-transform: uppercase;
      line-height: 1.2;
      text-align: center;
    }
    
    .login100-form-title::before {
      content: "";
      display: block;
      position: absolute;
      z-index: -1;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      background-color: rgba(54,84,99,0.7);
    }
    
    
    /*==================================================================
    [ Form ]*/
    
    .login100-form {
      width: 100%;
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      padding: 43px 88px 93px 190px;
    }
    
    
    /*------------------------------------------------------------------
    [ Input ]*/
    
    .wrap-input100 {
      width: 100%;
      position: relative;
      border-bottom: 1px solid #b2b2b2;
    }
    
    .label-input100 {
      font-family: Poppins-Regular;
      font-size: 15px;
      color: #808080;
      line-height: 1.2;
      text-align: right;
    
      position: absolute;
      top: 14px;
      left: -105px;
      width: 80px;
    
    }
    
    /*---------------------------------------------*/
    .input100 {
      font-family: Poppins-Regular;
      font-size: 15px;
      color: #555555;
      line-height: 1.2;
    
      display: block;
      width: 100%;
      background: transparent;
      padding: 0 5px;
    }
    
    .focus-input100 {
      position: absolute;
      display: block;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      pointer-events: none;
    }
    
    .focus-input100::before {
      content: "";
      display: block;
      position: absolute;
      bottom: -1px;
      left: 0;
      width: 0;
      height: 1px;
    
      -webkit-transition: all 0.6s;
      -o-transition: all 0.6s;
      -moz-transition: all 0.6s;
      transition: all 0.6s;
    
      background: #57b846;
    }
    
    
    /*---------------------------------------------*/
    input.input100 {
      height: 45px;
    }
    
    
    .input100:focus + .focus-input100::before {
      width: 100%;
    }
    
    .has-val.input100 + .focus-input100::before {
      width: 100%;
    }
    
    /*==================================================================
    [ Restyle Checkbox ]*/
    
    .input-checkbox100 {
      display: none;
    }
    
    .label-checkbox100 {
      font-family: Poppins-Regular;
      font-size: 13px;
      color: #999999;
      line-height: 1.4;
    
      display: block;
      position: relative;
      padding-left: 26px;
      cursor: pointer;
    }
    
    .label-checkbox100::before {
      content: "\f00c";
      font-family: FontAwesome;
      font-size: 13px;
      color: transparent;
    
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      justify-content: center;
      align-items: center;
      position: absolute;
      width: 18px;
      height: 18px;
      border-radius: 2px;
      background: #fff;
      border: 1px solid #e6e6e6;
      left: 0;
      top: 50%;
      -webkit-transform: translateY(-50%);
      -moz-transform: translateY(-50%);
      -ms-transform: translateY(-50%);
      -o-transform: translateY(-50%);
      transform: translateY(-50%);
    }
    
    .input-checkbox100:checked + .label-checkbox100::before {
      color: #57b846;
    }
    
    /*------------------------------------------------------------------
    [ Button ]*/
    .container-login100-form-btn {
      width: 100%;
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      flex-wrap: wrap;
    }
    
    .login100-form-btn {
      display: -webkit-box;
      display: -webkit-flex;
      display: -moz-box;
      display: -ms-flexbox;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 0 20px;
      min-width: 160px;
      height: 50px;
      background-color: #c78665;
      border-radius: 25px;
    
      font-family: Poppins-Regular;
      font-size: 16px;
      color: #fff;
      line-height: 1.2;
    
      -webkit-transition: all 0.4s;
      -o-transition: all 0.4s;
      -moz-transition: all 0.4s;
      transition: all 0.4s;
    }
    
    .login100-form-btn:hover {
      background-color: #121F38;
    }
    
    
    /*------------------------------------------------------------------
    [ Responsive ]*/
    
    @media (max-width: 576px) {
      .login100-form {
        padding: 43px 15px 57px 117px;
      }
    }
    
    @media (max-width: 480px) {
      .login100-form {
        padding: 43px 15px 57px 15px;
      }
    
      .label-input100 {
        text-align: left;
        position: unset;
        top: unset;
        left: unset;
        width: 100%;
        padding: 0 5px;
      }
    }
    
    
    /*------------------------------------------------------------------
    [ Alert validate ]*/
    
    .validate-input {
      position: relative;
    }
    
    .alert-validate::before {
      content: attr(data-validate);
      position: absolute;
      max-width: 70%;
      background-color: #fff;
      border: 1px solid #c80000;
      border-radius: 2px;
      padding: 4px 25px 4px 10px;
      top: 50%;
      -webkit-transform: translateY(-50%);
      -moz-transform: translateY(-50%);
      -ms-transform: translateY(-50%);
      -o-transform: translateY(-50%);
      transform: translateY(-50%);
      right: 2px;
      pointer-events: none;
    
      font-family: Poppins-Medium;
      color: #c80000;
      font-size: 13px;
      line-height: 1.4;
      text-align: left;
    
      visibility: hidden;
      opacity: 0;
    
      -webkit-transition: opacity 0.4s;
      -o-transition: opacity 0.4s;
      -moz-transition: opacity 0.4s;
      transition: opacity 0.4s;
    }
    
    .alert-validate::after {
      content: "\f06a";
      font-family: FontAwesome;
      display: block;
      position: absolute;
      color: #c80000;
      font-size: 15px;
      top: 50%;
      -webkit-transform: translateY(-50%);
      -moz-transform: translateY(-50%);
      -ms-transform: translateY(-50%);
      -o-transform: translateY(-50%);
      transform: translateY(-50%);
      right: 8px;
    }
    
    .alert-validate:hover:before {
      visibility: visible;
      opacity: 1;
    }
    
    @media (max-width: 992px) {
      .alert-validate::before {
        visibility: visible;
        opacity: 1;
      }
    }
    
        </style>


	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(../images/pagetitle-bg.jpg);">
					<span class="login100-form-title-1">
						Sign Up
					</span>
				</div>
                    <form method="POST" action="{{ route('register') }}" class="login100-form validate-form">
                        @csrf

                        <div class="wrap-input100 validate-input m-b-26" data-validate="Name is required" style="padding-left: 10px">
                            <span class="label-input100">Name</span>

                            <div class="col-md-6">
                                <input id="name" type="text" class="input100 @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Email is required" style="padding-left: 10px">
                            <span class="label-input100">Email</span>

                            <div class="col-md-6">
                                <input id="email" type="email" class="input100 @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Mobile is required" style="padding-left: 10px">
                            <span class="label-input100">Mobile</span>

                            <div class="col-md-6">
                                <input id="mobile" type="text" class="input100 @error('mobile') is-invalid @enderror" name="mobile" value="{{ old('mobile') }}" required autocomplete="mobile" autofocus>

                                @error('mobile')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Address is required" style="padding-left: 10px">
                            <span class="label-input100">Address</span>

                            <div class="col-md-6">
                                <input id="address" type="text" class="input100 @error('address') is-invalid @enderror" name="address" value="{{ old('address') }}" required autocomplete="address" autofocus>

                                @error('address')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Password is required" style="padding-left: 10px">
                            <span class="label-input100">Password</span>

                            <div class="col-md-6">
                                <input id="password" type="password" class="input100 @error('password') is-invalid @enderror" name="password" value="{{ old('password') }}" required autocomplete="password" autofocus>

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="password-confirm is required" style="padding-left: 10px">
                            <span class="label-input100">Confirm Password</span>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="input100 @error('password-confirm') is-invalid @enderror" name="password_confirmation" value="{{ old('password-confirm') }}" required autocomplete="new-password" autofocus>

                                @error('password-confirm')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>


                       
                        <div class="container-login100-form-btn">
                                <button type="submit"  class="login100-form-btn" style="margin-top: 20px">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
