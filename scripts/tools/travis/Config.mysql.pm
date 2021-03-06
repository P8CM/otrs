# --
# Copyright (C) 2001-2017 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Config;    ## no critic

use strict;
use warnings;
use utf8;

use File::Basename;

sub Load {
    my $Self = shift;

    $Self->{DatabaseHost}     = '127.0.0.1';
    $Self->{Database}         = 'otrs';
    $Self->{DatabaseUser}     = 'otrs';
    $Self->{DatabasePw}       = 'otrs';
    $Self->{DatabaseDSN}      = "DBI:mysql:database=$Self->{Database};host=$Self->{DatabaseHost};";
    $Self->{Home}             = dirname dirname __FILE__;
    $Self->{TestHTTPHostname} = 'localhost:5000';
    return;
}

use parent qw(Kernel::Config::Defaults);

1;
