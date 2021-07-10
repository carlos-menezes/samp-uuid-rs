use samp::prelude::*;
use samp::native;
use uuid::Uuid as __Uuid;

const VERSION: &str = "1.0.0";

pub struct Uuid;

impl SampPlugin for Uuid {
    fn on_load(&mut self) {
        println!("samp-uuid-rs v{} loaded", VERSION);
    }
}

impl Uuid {
    #[native(name = "UUID")]
    pub fn generate(&mut self, _: &Amx, dest: UnsizedBuffer) -> AmxResult<bool> {
        let mut dest = dest.into_sized_buffer(36 + 1); // 36 + EOS
        let uuid = __Uuid::new_v4().to_string();
        match samp::cell::string::put_in_buffer(&mut dest, &uuid) {
            Ok(_) => Ok(true),
            Err(_) => Ok(false)
        }
    }
}

