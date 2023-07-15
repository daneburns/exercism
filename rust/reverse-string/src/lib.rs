pub fn reverse(input: &str) -> String {
    input.rsplit("").collect::<Vec<&str>>().join("")
}
