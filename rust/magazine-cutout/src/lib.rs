// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings
#![allow(unused)]

use std::collections::HashMap;

pub fn can_construct_note(magazine: &[&str], note: &[&str]) -> bool {
    let mut magazine_hash: HashMap<&str, i32> = HashMap::new();
    for &str_ref in magazine {
        let count = magazine_hash.entry(str_ref).or_insert(0);
        *count += 1;
    }
    let mut vec: Vec<bool> = Vec::new();
    for &word in note {
        let result = magazine_hash.remove(word);
        match result {
            Some(x) => {
                if x > 0 {
                    magazine_hash.entry(word).or_insert(x - 1);
                    vec.push(true);
                } else {
                    vec.push(false);
                }
            }
            None => {
                vec.push(false);
                ()
            }
        }
    }
    let contains_false = vec.iter().any(|&x| x == false);
    !contains_false
}
