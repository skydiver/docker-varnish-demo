vcl 4.0;

backend apache7 {
    .host = "apache7";
    .port = "80";
}

backend apache5 {
    .host = "apache5";
    .port = "80";
}

sub vcl_recv {

    if (req.http.host ~ "php5.dev") {
        set req.backend_hint = apache5;
    } elsif (req.http.host ~ "php7.dev") {
        set req.backend_hint = apache7;
    }

}

sub vcl_backend_response {
    # Happens after we have read the response headers from the backend.
    #
    # Here you clean the response headers, removing silly Set-Cookie headers
    # and other mistakes your backend does.
}

sub vcl_deliver {
    # Happens when we have all the pieces we need, and are about to send the
    # response to the client.
    #
    # You can do accounting or modifying the final object here.
    set resp.http.X-Powered-By = "Fake Web Server";
}