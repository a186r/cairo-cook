// use core::debug::PrintTrait;
// use core::clone::Clone;
// use core::traits::TryInto;

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

// use debug::PrintTrait;
// use option::OptionTrait;

// fn main() {
//     // let x = 3;
//     // let y:u32 = x.try_into().unwrap();
//     // sub_u8s(1, 3); // panicked, felt252 不会溢出
//     numeric();
// }

// fn sub_u8s(x: u8, y: u8) -> u8 {
//     x - y
// }

// fn numeric() {
//     let sum = 5_u128 + 10_u128;

//     let different = 95_u128 - 4_u128;

//     let product = 4_u128 * 30_u128;

//     let quotient = 56_u128 / 32_u128;
//     let quotient = 64_u128 / 32_u128;

//     let remainder = 43_u128 % 5_u128;
// }

// fn the_bool() {
//     let t = true;
//     let f:bool = false;
// }

// fn main() {
//     let bbb = true;

//     let xxx:u8 = if bbb { 5 } else {6};
// }

// use debug::PrintTrait;
// fn main() {
//     let mut i:usize = 0;
//     loop {
//         if i > 10{
//             break();
//         }
//         'again'.print();
//         i+=1;
//     };
// }

// use array::ArrayTrait;

// fn main() {
//     let mut a = ArrayTrait::new();
//     a.append(0);
//     a.append(1);
//     a.append(2);

//     let mut arr = ArrayTrait::<u128>::new();
// }

// use option::OptionTrait;
// use array::ArrayTrait;
// use debug::PrintTrait;

// fn main() {
//     let mut a = ArrayTrait::new();
//     a.append(10);
//     a.append(1);
//     a.append(2);

//     let first_value = a.pop_front().unwrap();
//     first_value.print();

//     let end_value = *a.at(0);
//     end_value.print();

//     let a_len = a.len();
//     a_len.print();
// }

// use array::ArrayTrait;
// use box::BoxTrait;

// fn main() -> u128 {
//     let mut arr = ArrayTrait::<u128>::new();
//     arr.append(100_u128);
//     let length = arr.len();
//     match arr.get(length - 1_usize) {
//         Option::Some(x) => {
//             *x.unbox()
//         },
//         Option::None(_) => {
//             let mut data = ArrayTrait::new();
//             data.append('out of bounds');
//             panic(data)
//         }
//     }

//     // 100
// }

// use array::ArrayTrait;
// use traits::Into;

// #[derive(Copy, Drop)]
// enum Data{
//     Integer: u128,
//     Felt: felt252,
//     Tuple: (u32, u32)
// }

// fn main() {
//     let mut message:Array<Data> = ArrayTrait::new();
//     message.append(Data::Integer(100_u128));
//     message.append(Data::Integer(20_u128));
//     message.append(Data::Felt('Hello World!'));
//     message.append(Data::Tuple((1_u32, 3_u32)));
//     message.len().print();

//     let span = message.span();
// }

// use dict::Felt252DictTrait;

// #[derive(Destruct)]
// struct A {
//     dict: Felt252Dict<u128>
// }

// fn main() {
//     A {
//         dict: Felt252DictTrait::new()
//     };
// }

// use array::ArrayTrait;
// use clone::Clone;
// use array::ArrayTCloneImpl;

// fn main() {
//     let arr1 = ArrayTrait::<u128>::new();
//     let arr2 = arr1.clone();
// }

// #[derive(Drop)]
// struct MyStruct{}

// fn main() {
//     let my_struct = MyStruct{};

//     takes_ownership(my_struct);

//     let x = 5_u128;

//     make_copy(x);
// }

// fn takes_ownership(some_struct: MyStruct) {}

// fn make_copy(some_uinteger: u128) {}

// use array::ArrayTrait;

// fn main() {
//     let arr1 = ArrayTrait::<u128>::new();

//     let (arr2, len) = calculate_length(arr1);
// }

// fn calculate_length(arr: Array<u128>) -> (Array<u128>, usize) {
//     let len = arr.len();
//     (arr, len)
// }

use array::ArrayTrait;
use debug::PrintTrait;

fn main() {
    let mut arr1 = ArrayTrait::<u128>::new();
    let first_snapshot = @arr1;
    arr1.append(1_u128);
    let first_length = calculate_length(first_snapshot);
    let second_length = calculate_length(@arr1);
    first_length.print();
    second_length.print();
}

fn calculate_length(arr: @Array<u128>) -> usize {
    arr.len()
}