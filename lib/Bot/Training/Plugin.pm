package Bot::Training::Plugin;
BEGIN {
  $Bot::Training::Plugin::VERSION = '0.03';
}

use 5.010;
use Any::Moose;
use File::ShareDir qw< :ALL >;
use File::Spec::Functions qw< catdir catfile >;
use namespace::clean -except => 'meta';

sub file {
    my ($self) = @_;

    my $class = ref $self;
    my ($last) = $class =~ m[::([^:]+)$];
    $class =~ s[::][-]g;

    my $file = dist_file( $class, lc($last) . '.trn');

    return $file;
}

__PACKAGE__->meta->make_immutable;
