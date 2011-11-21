package spring.social.paypal.web

import org.codehaus.groovy.grails.web.json.JSONObject
import org.apache.commons.httpclient.HttpClient
import org.apache.commons.httpclient.methods.GetMethod
import grails.converters.JSON
import org.springframework.social.paypal.domain.PaypalUser

class LoginController {

    String clientId = "5ee49a74819cc6ce554d5e56c5378de6";
    String clientSecret = "9eaec5867f6535e3";
    String redirectURL = "http://www.bluejay19.com:8080/spring-social-paypal-web/login/getProfile";

    def index() {

    }

    def doLogin () {

        def error = params.error_description
        def code = params.code

        if (error) {
            render "$error"
        } else {


            def url = new URL ("https://identity.x.com/xidentity/oauthtokenservice")
            def conn = url.openConnection()

            conn.setRequestMethod("POST")

            String data = "client_id=${clientId}&client_secret=${clientSecret}&grant_type=authorization_code&code=${code}&redirect_uri=${redirectURL}";

            conn.doOutput = true

            Writer wr = new OutputStreamWriter(conn.outputStream)
            wr.write(data)
            wr.flush()
            wr.close()

            conn.connect()


            JSONObject userJson = JSON.parse(conn.content.text)
            def accessToken = userJson.access_token

            def accessUrl = "https://identity.x.com/xidentity/resources/profile/me?oauth_token=$accessToken"

            println("accessUrl = $accessUrl")
            userJson = JSON.parse(getResponseAsString(accessUrl))
            def paypalUser = new PaypalUser()

            paypalUser.email = userJson.identity.emails[0]
            paypalUser.fullName = userJson.identity.fullName
            paypalUser.status = userJson.identity.status

            return [paypalUser : paypalUser]

        }

    }

    def getResponseAsString(String url) {
        HttpClient httpClient = new HttpClient()

        GetMethod method = new GetMethod(url)

        httpClient.executeMethod(method)

         return method.getResponseBodyAsString();

    }


}
