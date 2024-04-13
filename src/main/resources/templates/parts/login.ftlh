<style>
    .container {
        position: absolute;
        top: 30%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
</style>

<#macro login path isRegisterForm>

    <div class="container">
         <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card p-4 shadow-sm rounded">
                    <form action="${path}" method="post">
                        <div class="text-center">
                            <div>
                                <img src="static/images/logo.png" alt="Image" height="55" onerror="this.style.display='none';"><br><br>
                            </div>
                            <div>
                                <#if isRegisterForm> <h5>Registration form</h5><#else><h5>Login form</h5></#if><br>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">User Name :</label>
                            <div class="col-sm-9">
                                <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                                       class="form-control rounded ${(usernameError??)?string('is-invalid', '')}"
                                       placeholder="User name" />
                                <#if usernameError??>
                                    <div class="invalid-feedback">
                                        ${usernameError}
                                    </div>
                                </#if>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Password:</label>
                            <div class="col-sm-9">
                                <input type="password" name="password"
                                       class="form-control rounded ${(passwordError??)?string('is-invalid', '')}"
                                       placeholder="Password" />
                                <#if passwordError??>
                                    <div class="invalid-feedback">
                                        ${passwordError}
                                    </div>
                                </#if>
                            </div>
                        </div>
                        <#if isRegisterForm>
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Password:</label>
                                <div class="col-sm-9">
                                    <input type="password" name="password2"
                                           class="form-control rounded ${(password2Error??)?string('is-invalid', '')}"
                                           placeholder="Retype password" />
                                    <#if password2Error??>
                                        <div class="invalid-feedback">
                                            ${password2Error}
                                        </div>
                                    </#if>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Email:</label>
                                <div class="col-sm-9">
                                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                                           class="form-control rounded ${(emailError??)?string('is-invalid', '')}"
                                           placeholder="some@some.com" />
                                    <#if emailError??>
                                        <div class="invalid-feedback">
                                            ${emailError}
                                        </div>
                                    </#if>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-9 offset-sm-3">
                                    <div class="g-recaptcha" data-sitekey="6LevvrQpAAAAALLut2QL5XGtun17cIrAd_y_G8xJ"></div>
                                    <#if captchaError??>
                                        <div class="alert alert-danger mt-2" role="alert">
                                            ${captchaError}
                                        </div>
                                    </#if>
                                </div>
                            </div>
                        </#if>
                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <div class="text-center">
                            <button class="btn btn-primary" type="submit" style="width: 150px"><#if isRegisterForm>Create account<#else>Sign In</#if></button>
                            <div>

                                <#if !isRegisterForm> <br>Don't have an account? <a href="/registration">Register</a><br></#if>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
         </div>
        </div>




</#macro>





<#macro logout>
    <#include "security.ftlh" >
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit"><#if user??>Sign Out<#else>Log in</#if></button>
    </form>
</#macro>