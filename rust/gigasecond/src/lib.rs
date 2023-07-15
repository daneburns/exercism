use time::{Duration, PrimitiveDateTime};

// Returns a DateTime one billion seconds after start.
pub fn after(start: PrimitiveDateTime) -> PrimitiveDateTime {
    let giga: Duration = Duration::seconds(1_000_000_000);
    start.checked_add(giga).unwrap()
}
