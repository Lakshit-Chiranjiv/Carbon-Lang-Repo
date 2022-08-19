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
    var arr3: auto = (4,2,5);
    Print("{0}",arr1[3]);
    Print(arr2[1]);
    Print("{0}",arr3[1]);
}

fn Tuples() {
    var t1: auto = (54,false,"Good morning",332);
    Print("{0}",t1[3]);
    var t2: (String,i32,i32,bool) = ("str 1",43,56,false);
    Print(t2[0]);

    var t3: auto = t2;
    Print(t3[0]);
}

fn Structs() {
    var car: auto = {.color = "Red",.speed = 96};
    Print(car.color);
    Print("{0}",car.speed);
    car.speed = 120;
    Print("{0}",car.speed);

    var st: {.x: i32, .y: bool} = {.x = 45, .y = true};
    Print("{0}",st.x);
    st.x = 32;
    Print("{0}",st.x);

}

class Details {
    var name: String;
    var age: i32;
    var passed: bool;

    //class methods
    fn getAge[me: Details]() -> i32{
        return me.age;
    }

    fn add10ToAge[me: Details]() -> i32{
        return me.age+10;
    }

    //class static functions (any normal functions in class are static and are property of class)
    fn sendDetail() -> Details{
        return {.name = "Some name", .age = 10, .passed = false};
    }
}


fn Pointers(){
    var x: i32 = 7;
    var p: i32* = &x;
    Print("x = {0}",x);
    *p = 99;
    Print("x = {0}",x);
    var q: i32* = &*p;
    *q = 123;
    Print("x = {0}",x);

    var ss: auto = {.a = 10, .b = 20};
    Print("ss.a = {0}",ss.a);
    var sp: i32* = &ss.a;
    *sp = 90;
    Print("ss.a = {0}",ss.a);

}

fn Conditionals(num1: i32, num2: i32){
    if(num1 > 17){
        Print("Greater than Seventeen");
    }
    else if(num1 == 15){
        Print("Fifteen");
    }
    else{
        Print("Not Seventeen or Fifteen");
    }

    match(num2) {
        case 5 => {
            Print("Five");
        }
        case 10 => {
            Print("Ten");
        }
        case 15 => {
            Print("Fifteen");
        }
        case 20 => {
            Print("Twenty");
        }
        default => {
            Print("Nothing");
        }
    }
}

fn WhileLoops(){
    var x: i32 = 10;

    while(x > 0){
        Print("x is {0}",x);
        x = x - 1;
    }

    x = 5;

    while(not(x == 0)){
        Print("x is again {0}",x);
        x = x - 1;
    }
}

fn getNum(x: i32) -> i32{
    return x;
}

fn getStr(x: String) -> String{
    return x;
}

fn getVal[gen:! Type](x: gen) -> gen{
    return x;
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
    Tuples();
    Structs();

    var d1: Details = {.name = "Lakshit", .age = 20, .passed = true};
    var d2: Details = {.name = "George", .age = 17, .passed = false};

    Print(d1.name);
    Print("{0}",d2.age);
    Print("{0}",d1.getAge());
    Print("{0}",d1.add10ToAge());
    Print(Details.sendDetail().name);
    Print("{0}",Details.sendDetail().age);

    Pointers();
    Conditionals(19,15);
    WhileLoops();

    Print("{0}",getNum(70));
    Print(getStr("70"));

    Print("{0}",getVal(30));
    Print(getVal("30"));
    return 0;
}
