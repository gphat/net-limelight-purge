use Net::LimeLight::Purge;
use Net::LimeLight::Purge::Request;

my $purge = Net::LimeLight::Purge->new(
    username => 'magazines',
    password => 'magcom325'
);
# my $resp = $purge->get_all_purge_statuses(1);
# 
# print "Completed: ".$resp->completed_entries."\n";
# print "Total: ".$resp->total_entries."\n";
# print "Requests: ".scalar(@{ $resp->statuses })."\n";

my $req = Net::LimeLight::Purge::Request->new(
    shortname => 'magazines',
    url => 'http://cdn.magazines.com/fetch/key/product_baseball-youth/image?macro=medium'
);
print $purge->create_purge_request([ $req ])."\n";