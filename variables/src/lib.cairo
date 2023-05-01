use debug::PrintTrait;

const ONE_HOUR_IN_SECOND:u32 = 3600_u32;

fn main() {
    let mut x = 5;
    x.print();
    x = 6;
    x.print();
    ONE_HOUR_IN_SECOND.print();
    shadow();
}

fn shadow() {
    let x = 5; // 5
    let x = x + 1; // 6
    {
        let x = x * 2; // 12
        'Inner scope x value is: '.print();
        x.print();
    }
    'Outer scope x value is:'.print();
    x.print(); // 6
}