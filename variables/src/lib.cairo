use core::traits::TryInto;
// use debug::PrintTrait;

// const ONE_HOUR_IN_SECOND:u32 = 3600_u32;

// fn main() {
//     let mut x = 5;
//     x.print();
//     x = 6;
//     x.print();
//     ONE_HOUR_IN_SECOND.print();
//     shadow();
// }

// fn shadow() {
//     let x = 5; // 5
//     let x = x + 1; // 6
//     {
//         let x = x * 2; // 12
//         'Inner scope x value is: '.print();
//         x.print();
//     }
//     'Outer scope x value is:'.print();
//     x.print(); // 6
// }

use debug::PrintTrait;
use option::OptionTrait;

fn main() {
    // let x = 3;
    // let y:u32 = x.try_into().unwrap();
    // sub_u8s(1, 3); // panicked, felt252 不会溢出
    numeric();
}

fn sub_u8s(x: u8, y: u8) -> u8 {
    x - y
}

fn numeric() {
    let sum = 5_u128 + 10_u128;

    let different = 95_u128 - 4_u128;

    let product = 4_u128 * 30_u128;

    let quotient = 56_u128 / 32_u128;
    let quotient = 64_u128 / 32_u128;

    let remainder = 43_u128 % 5_u128;
}

fn the_bool() {
    let t = true;
    let f:bool = false;
}