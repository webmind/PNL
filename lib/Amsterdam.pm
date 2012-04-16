package Amsterdam;
use Dancer ':syntax';      # Controler
use Template;              # View

use Amsterdam::Meeting 'next_amsterdam_meeting';

our $VERSION = '0.1';

get '/' => sub {
    template 'amsterdam' => {
        meeting_date => next_amsterdam_meeting(),
    };
};

true;
