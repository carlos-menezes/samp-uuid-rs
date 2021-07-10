extern crate uuid;

use samp::initialize_plugin;

mod plugin;
use plugin::Uuid;

initialize_plugin!(
    natives: [
        Uuid::generate
    ],
    {
        Uuid {}
    }
);