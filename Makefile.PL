use ExtUtils::MakeMaker;

###----------------------------------------------------------------###
#  Copyright 2006 - Paul Seamons                                     #
#  Distributed under the same terms as Perl itself                   #
###----------------------------------------------------------------###

WriteMakefile(
              NAME          => "Net::YAR",
              AUTHOR        => "Paul Seamons",
              ABSTRACT_FROM => "lib/Net/YAR.pm",
              VERSION_FROM  => "lib/Net/YAR.pm",
              INSTALLDIRS   => 'site',
              dist          => {
                DIST_DEFAULT => 'all tardist',
                COMPRESS     => 'gzip -vf',
                SUFFIX       => '.gz',
              },
              clean          => {
                FILES        => '*~',
              },
              realclean         => {
                FILES        => '*~',
              },
              );

package MY;

sub postamble {
  return qq^
    
pm_to_blib: README

README: \$(VERSION_FROM)
	pod2text \$(VERSION_FROM) > README
^;
}

1;
