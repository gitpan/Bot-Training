
use strict;
use warnings;

 BEGIN { require 5.010; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Bot::Training',
                       'DISTNAME' => 'Bot-Training',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Ævar Arnfjörð Bjarmason <avar@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'File::Slurp' => '0'
                                           },
                       'ABSTRACT' => 'Plain text training material for bots like L<Hailo> and L<AI::MegaHAL>',
                       'EXE_FILES' => [
                                        'bin/bot-training'
                                      ],
                       'VERSION' => '0.02',
                       'PREREQ_PM' => {
                                        'Module::Pluggable' => '0',
                                        'Dir::Self' => '0',
                                        'Pod::Usage' => '0',
                                        'Class::MOP' => '0',
                                        'MouseX::Types::Mouse' => '0',
                                        'Encode' => '0',
                                        'open' => '0',
                                        'namespace::clean' => '0',
                                        'MouseX::Getopt::Dashes' => '0',
                                        'List::Util' => '0',
                                        'File::ShareDir' => '0',
                                        'Any::Moose' => '0',
                                        'autodie' => '0',
                                        'File::Spec::Functions' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



