/// Create an empty vector
pub fn create_empty() -> Vec<u8> {
    Vec::new()
}

/// Create a buffer of `count` zeroes.
///
/// Applications often use buffers when serializing data to send over the network.
pub fn create_buffer(count: usize) -> Vec<u8> {
    let mut vec = Vec::new();
    for _num in 0..count {
        vec.push(0);
    }
    println!("{:?}", vec);
    vec
}

/// Create a vector containing the first five elements of the Fibonacci sequence.
///
/// Fibonacci's sequence is the list of numbers where the next number is a sum of the previous two.
/// Its first five elements are `1, 1, 2, 3, 5`.
pub fn fibonacci() -> Vec<u8> {
    let result = generate_fibonacci(5);
    result
}

pub fn generate_fibonacci(n: usize) -> Vec<u8> {
    let mut fibonacci_numbers = vec![1; n];
    for i in 2..n {
        fibonacci_numbers[i] = fibonacci_numbers[i - 1] + fibonacci_numbers[i - 2];
    }
    fibonacci_numbers
}
