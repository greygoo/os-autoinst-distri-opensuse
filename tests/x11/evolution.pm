use base "gnomestep";
use bmwqemu;

sub run() {
    my $self = shift;
    x11_start_program("evolution");
    if ( $vars{UPGRADE} ) { send_key "alt-f4"; wait_idle; }    # close mail format change notifier
    if ( $vars{LIVETEST} ) {
        assert_screen 'test-evolution-1', 30;
    }
    else {
        assert_screen 'test-evolution-1', 3;
    }
    send_key "ctrl-q";                                        # really quit (alt-f4 just backgrounds)
    send_key "alt-f4";
    wait_idle;
}

1;
# vim: set sw=4 et: