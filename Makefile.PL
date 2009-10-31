use inc::Module::Install;

if ( -e 'MANIFEST.SKIP' ) {
    system('pod2text lib/Net/Telnet/Gearman.pm > README');
}

perl_version '5.006001';

name 'Net-Telnet-Gearman';
all_from 'lib/Net/Telnet/Gearman.pm';

requires(
    'Net::Telnet'     => '3.03',
    'Class::Accessor' => '0.34',
);

test_requires 'Test::More';

auto_install;
WriteAll;
