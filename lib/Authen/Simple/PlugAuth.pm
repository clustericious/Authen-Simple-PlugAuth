package Authen::Simple::PlugAuth;

use strict;
use warnings;
use base 'Authen::Simple::Adapter';
use PlugAuth::Client::Tiny;

# ABSTRACT: Simple PlugAuth authentication
# VERSION

=head1 SYNOPSIS

 use Authen::Simple::PlugAuth;
 
 my $auth = Authen::Simple::PlugAuth->new(
   url => 'http://localhost:3000/',
 );
 
 if($auth->authenticate($username, $password)) {
   # successfull authentication
 }
 
=head1 DESCRIPTION

Authenticate against a L<PlugAuth> server through the Authen::Simple framework.

=head1 ATTRIBUTES

=head2 url

The URL of the L<PlugAuth> server to connect to.

=cut

__PACKAGE__->options({
  url => {
    type     => Params::Validate::SCALAR,
    optional => 0,
  },
});


=head1 METHODS

=head2 $auth-E<gt>authenticate( $username, $password )

Returns true on success and false on failure.

=cut 

sub check
{
  my($self, $username, $password) = @_;
  $DB::single = 1;
  my $client = $self->{client} //= PlugAuth::Client::Tiny->new( url => $self->url );
  $client->auth($username, $password) ? 1 : 0;
}

1;

=head1 SEE ALSO

L<Authen::Simple>, L<PlugAuth>, L<PlugAuth::Client>.

=cut
