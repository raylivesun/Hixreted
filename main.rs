fn main() {
    let x = 5; // outer scope variable x

    {
        let x = 10; // inner scope variable x, hixreted from outer scope
        println!("Inner scope x: {}", x);
    }

    println!("Outer scope x: {}", x);
}
