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

fn VariablesCheck() {
    //var variables can change
    var some_var: String = "Message 1";
    Print(some_var);
    some_var = "Message 1 Updated";
    var num_var: i32 = 54;

    //let variables can't change
    let var1: i32 = 86;

    //this is giving error
    Print("{0} and {0}",num_var,var1);
}

fn AutoType() {
    var x: auto = "Evening";
    Print(x);
}

//Main function should always return a 32 bit integer
fn Main() -> i32 {
    Print("My name is Lakshit");
    Print("I am {0} years old",20);
    Print("{0}",ReturnTen());
    Print(Greet());
    PrintMessage();
    VariablesCheck();
    AutoType();
    return 0;
}
