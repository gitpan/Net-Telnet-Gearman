use strict;
use warnings;
use Test::More tests => 5;
use Net::Telnet::Gearman::Function;

my @tests = (
    {
        line     => 'reverse 3       3       12',
        expected => {
            'busy'    => 3,
            'free'    => 9,
            'name'    => 'reverse',
            'queue'   => 3,
            'running' => 12,
        }
    },
);

foreach my $test (@tests) {
    my $w = Net::Telnet::Gearman::Function->parse_line( $test->{line} );
    foreach my $attr ( keys %{ $test->{expected} } ) {
        is( $w->$attr, $test->{expected}{$attr} );
    }
}
