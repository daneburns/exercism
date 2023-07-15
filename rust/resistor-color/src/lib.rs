use enum_iterator::{all, Sequence};
use int_enum::IntEnum;

#[repr(u32)]
#[derive(Clone, Copy, Debug, Eq, PartialEq, IntEnum, Sequence)]

pub enum ResistorColor {
    Black = 0,
    Brown = 1,
    Red = 2,
    Orange = 3,
    Yellow = 4,
    Green = 5,
    Blue = 6,
    Violet = 7,
    White = 9,
    Grey = 8,
}

pub fn color_to_value(_color: ResistorColor) -> u32 {
    println!("{:?} color", _color);
    _color as u32
}

pub fn value_to_color_string(value: u32) -> String {
    println!("{:?} value", ResistorColor::from_int(value));
    match ResistorColor::from_int(value) {
        Ok(value) => {
            format!("{:?}", value)
        }

        Err(err) => String::from("value out of range"),
    }
}
pub fn value_to_resistor_color(value: u32) -> ResistorColor {
    println!("{:?} value", ResistorColor::from_int(value));
    match ResistorColor::from_int(value) {
        Ok(value) => value,
        Err(err) => ResistorColor::Red,
    }
}

pub fn colors() -> Vec<ResistorColor> {
    let mut list = all::<ResistorColor>()
        .map(|x| color_to_value(x))
        .collect::<Vec<_>>();

    list.sort();
    list.iter()
        .map(|x| value_to_resistor_color(*x))
        .collect::<Vec<_>>()
}
