use FindBin;
use Test::More;

unless ( -f "$FindBin::Bin/../MANIFEST.SKIP" ) {
    plan( skip_all => "Author tests not required for installation" );
}

eval "use Test::Pod 1.14";
plan skip_all => "Test::Pod 1.14 required for testing POD" if $@;
all_pod_files_ok();
