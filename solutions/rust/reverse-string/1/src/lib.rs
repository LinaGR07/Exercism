pub fn reverse(input: &str) -> String {
    let mut response = String::new();

    for c in input.chars().rev() {
        response.push(c);
    }

    response
}