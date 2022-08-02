//package name can be anything followed by either api or impl
package sample api;

fn ReturnTen() -> i32 {
    return 10;
}

fn Greet() -> String {
    return "Hello";
}

fn PrintMessage() {
    Print("Some message");
}

//Main function should always return a 32 bit integer
fn Main() -> i32 {
    Print("My name is Lakshit");
    Print("I am {0} years old",20);
    Print("{0}",ReturnTen());
    Print(Greet());
    PrintMessage();
    return 0;
}
