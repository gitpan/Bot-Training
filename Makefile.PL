
use strict;
use warnings;

 BEGIN { require 5.010; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Plain text training material for bots like L<Hailo> and L<AI::MegaHAL>',
  'AUTHOR' => 'Ævar Arnfjörð Bjarmason <avar@cpan.org>',
  'BUILD_REQUIRES' => {
    'File::Find' => '0',
    'File::Slurp' => '0',
    'File::Temp' => '0',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Bot-Training',
  'EXE_FILES' => [
    'bin/bot-training'
  ],
  'LICENSE' => 'perl',
  'NAME' => 'Bot::Training',
  'PREREQ_PM' => {
    'Any::Moose' => '0',
    'Class::MOP' => '0',
    'Dir::Self' => '0',
    'Encode' => '0',
    'File::ShareDir' => '0',
    'File::Spec::Functions' => '0',
    'List::Util' => '0',
    'Module::Pluggable' => '0',
    'Moose' => '0',
    'MooseX::Getopt::Dashes' => '0',
    'Mouse' => '0',
    'MouseX::Getopt::Dashes' => '0',
    'Pod::Usage' => '0',
    'autodie' => '0',
    'namespace::clean' => '0',
    'open' => '0'
  },
  'VERSION' => '0.04',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM}; 
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod}; 
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



