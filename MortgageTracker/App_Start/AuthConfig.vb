Imports Microsoft.AspNet.Membership.OpenAuth

Public Module AuthConfig
    Sub RegisterOpenAuth()
        ' See http://go.microsoft.com/fwlink/?LinkId=252803 for details on setting up this ASP.NET
        ' application to support logging in via external services.

        OpenAuth.AuthenticationClients.AddTwitter(
            consumerKey:="gkOtQbUGLb4bg4ISQjwwmg",
            consumerSecret:="TyUq6iSL7Tq6JNW61XiwCY79MD2Fjp0GdpdhgNxdU")

        OpenAuth.AuthenticationClients.AddFacebook(
            appId:="152992731533550",
            appSecret:="c2c294ea4a280b240fe1f52d3da6f8ad")

        'OpenAuth.AuthenticationClients.AddMicrosoft(
        '    clientId:= "your Microsoft account client id",
        '    clientSecret:= "your Microsoft account client secret")

        OpenAuth.AuthenticationClients.AddGoogle()
    End Sub
End Module
