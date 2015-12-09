# Authen::Simple::PlugAuth [![Build Status](https://secure.travis-ci.org/clustericious/Authen-Simple-PlugAuth.png)](http://travis-ci.org/clustericious/Authen-Simple-PlugAuth)

Simple PlugAuth authentication

# SYNOPSIS

    use Authen::Simple::PlugAuth;
    
    my $auth = Authen::Simple::PlugAuth->new(
      url => 'http://localhost:3000/',
    );
    
    if($auth->authenticate($username, $password)) {
      # successfull authentication
    }

# DESCRIPTION

Authenticate against a [PlugAuth](https://metacpan.org/pod/PlugAuth) server through the Authen::Simple framework.

# ATTRIBUTES

## url

    my $url = $auth->url;

The URL of the [PlugAuth](https://metacpan.org/pod/PlugAuth) server to connect to.

# METHODS

## authenticate

    my $bool = $auth->authenticate( $username, $password )

Returns true on success and false on failure.

# SEE ALSO

[Authen::Simple](https://metacpan.org/pod/Authen::Simple), [PlugAuth](https://metacpan.org/pod/PlugAuth), [PlugAuth::Client](https://metacpan.org/pod/PlugAuth::Client).

# AUTHOR

Graham Ollis &lt;plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
