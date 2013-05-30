
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "test for trailing space in source files.",
  "AUTHOR" => "Shlomi Fish <shlomif\@cpan.org>",
  "BUILD_REQUIRES" => {
    "File::Path" => 0,
    "File::Spec" => 0,
    "Module::Build" => "0.3601",
    "Test::Builder::Tester" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "Test-TrailingSpace",
  "EXE_FILES" => [],
  "LICENSE" => "mit",
  "NAME" => "Test::TrailingSpace",
  "PREREQ_PM" => {
    "File::Find::Object::Rule" => "0.0301",
    "Test::More" => 0,
    "autodie" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.0203",
  "test" => {
    "TESTS" => "t/*.t"
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



