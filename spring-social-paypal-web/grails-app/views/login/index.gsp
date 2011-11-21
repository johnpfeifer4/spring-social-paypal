<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<title>BillMeLater - Login</title>
	<meta name="description" content="">
	<meta name="author" content="">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="${request.contextPath}/css/style.css?v=2">

</head>
<body>

            <h1>Bill Me Later - Account Access</h1>


            <form>
                    <label>Username:</label> <input type="text" name="username" />
                    <label>Password:</label> <input type="password" name="password"  />

                    <div id="loginButtons">
                        <div id="submitButton">
                            <input type="submit" value="Submit" name="submit" class="submit" />
                        </div>
                        <div id="or">OR</div>
                        <div id="paypalAccess">
                            <a href="https://identity.x.com/xidentity/resources/authorize?scope=https://identity.x.com/xidentity/resources/profile/me&response_type=code&redirect_uri=http://www.bluejay19.com:8080/spring-social-paypal-web/login/doLogin&client_id=5ee49a74819cc6ce554d5e56c5378de6">
                                <img src="https://www.paypalobjects.com/en_US/Marketing/i/btn/login-with-paypal-button.png"/>
                        </div>
                    </div>
            </form>

        </a>


</body>
</html>