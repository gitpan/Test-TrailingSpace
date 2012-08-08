
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Path" => 0,
    "File::Spec" => 0,
    "Module::Build" => "0.3601",
    "Test::Builder::Tester" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "test for trailing space in source files.",
  "dist_author" => [
    "Shlomi Fish <shlomif\@cpan.org>"
  ],
  "dist_name" => "Test-TrailingSpace",
  "dist_version" => "0.0102",
  "license" => "mit",
  "module_name" => "Test::TrailingSpace",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "File::Find::Object::Rule" => "0.0301",
    "Test::More" => 0,
    "autodie" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
