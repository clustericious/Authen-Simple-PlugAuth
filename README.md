# Authen::Simple::PlugAuth [![Build Status](https://secure.travis-ci.org/plicease/Authen-Simple-PlugAuth.png)](http://travis-ci.org/plicease/Authen-Simple-PlugAuth)

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

Authenticate against a [PlugAuth](http://search.cpan.org/perldoc?PlugAuth) server through the Authen::Simple framework.

# ATTRIBUTES

## url

The URL of the [PlugAuth](http://search.cpan.org/perldoc?PlugAuth) server to connect to.

# METHODS

## $auth->authenticate( $username, $password )

Returns true on success and false on failure.

# SEE ALSO

[Authen::Simple](http://search.cpan.org/perldoc?Authen::Simple), [PlugAuth](http://search.cpan.org/perldoc?PlugAuth), [PlugAuth::Client](http://search.cpan.org/perldoc?PlugAuth::Client).

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
