#[derive(Debug, Clone, Copy)]
pub enum CalculatorInput {
    Add,
    Subtract,
    Multiply,
    Divide,
    Value(i32),
}

pub fn evaluate(inputs: &[CalculatorInput]) -> Option<i32> {
    println!("{:?}", inputs);
    match inputs {
        [] => None,
        _ => {
            let res = inputs
                .iter()
                .fold(vec![], |acc: Vec<CalculatorInput>, x| match x {
                    CalculatorInput::Value(x) => [acc, vec![CalculatorInput::Value(*x)]].concat(),
                    CalculatorInput::Add => acc.iter().fold(vec![CalculatorInput::Value(0_i32)], |acc,x| vec![acc + x]  )
                    _ => acc,
                });
            Some(1)
        }
    }
    // inputs.into_iter().reduce(|acc, x| x)
}
