use core::fmt;

#[derive(Debug)]

pub struct Clock {
    hours: i32,
    minutes: i32,
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        Self {
            hours: hours,
            minutes: minutes,
        }
    }

    pub fn to_string(&self) -> String {
        let new_hours = (self.hours + (self.minutes / 60)) % 24;
        let disp_hour = new_hours.to_string();
        let disp_min = (self.minutes % 60).to_string();
        let padded_hour = format!("{:0>2}", disp_hour);
        let padded_min = format!("{:0>2}", disp_min);
        let mut time = String::from("");
        time.push_str(padded_hour.as_str());
        time.push_str(":");
        time.push_str(padded_min.as_str());
        time
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        let new_minutes = self.minutes + minutes;

        println!("{}", (self.hours + (new_minutes / 60)) % 24);

        Self {
            hours: (self.hours + (new_minutes / 60)) % 24,
            minutes: new_minutes % 60,
        }
    }
}

impl PartialEq for Clock {
    fn eq(&self, other: &Self) -> bool {
        // Define your comparison logic here
        self.hours == other.hours && self.minutes == other.minutes
    }
}
