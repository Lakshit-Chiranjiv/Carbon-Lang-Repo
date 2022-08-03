//package name can be anything followed by either api or impl
package sample api;

var g1:i32 = 203;

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

fn GlobalVariables() {
    var c:i32 = 55 + g1;
    Print("203 + 55 = {0}",c);
}

fn MultiLineStrings() {
    var s:auto = """
    Hi I am Lakshit, 
    I am a developer
    I am happy
    """;
    Print(s);
}

fn Add(x: i32, y: i32) -> i32 {
    return x+y;
}

fn Arrays() {
    var arr1: [i32;5] = (44,22,42,56,35);
    var arr2: [String;3] = ("hello","bye","okay");
    Print("{0}",arr1[3]);
    Print(arr2[1]);
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
    GlobalVariables();
    MultiLineStrings();
    var ans: i32 = Add(44,24);
    Print("sum = {0}",ans);

    Arrays();
    return 0;
}
