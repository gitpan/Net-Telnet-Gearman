use FindBin;
use Test::More;

unless ( -f "$FindBin::Bin/../MANIFEST.SKIP" ) {
    plan( skip_all => "Author tests not required for installation" );
}

eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage" if $@;
all_pod_coverage_ok();
