# demo_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

This demo present basic knowledge regarding flutter basic, variables and data type, control flow statement, loop control, collections and functions.
Each directory was divided base on each section for schedule plan: [https://docs.google.com/spreadsheets/d/1JjHhr9sko0brJi0QNIxT2BQKfU47zr79xoKV6AslbLk/edit?usp=sharing]

Day 1: 15/11/2021
Dart supports the following types:
-   Number: being used to store numeric value, such as integer or double
-   String
-   Boolean : Represents two value - true or false
-   Lists : Collections of ordered objects (or value). The elements in the list are separated by the comma enclose in the square bracket
-   Maps : Being used to store value in key-value pairs. Each key is associated with its value.
-   Runes : The special of String Unicode UTF-32 units. It is used to present special syntax
-   Symbols: The object which are used to refer an operator or identifier that declare in a Dart program
-   Dynamic: The variable type is not specified explicitly

Control flow statements:
-   if and else
-   for loops
-   while and do-while loops
-   break and continue
-   switch and case
-   assert

Null Safety: Types in code default are non-nullable. Unless it was told nullable by adding ? to its type declaration.
Non-nullable top-level variables and static fields must have initializers.Non-nullable instance fields must be initialized
before the constructor body begins.

Function vs method
-   Same: both using to do some work
-   Diff:
    +) Function was declared outside the class and is a top-level function, or was created inside another function or method .
    +) Method was created inside a class and tide to an instance of the class. Method can be referenced by using 'this'.
    
Syntax vs Properties
-   Syntax is the set of rules for typing
-   Properties is the top-level variables or was tied to class or object.

Flutter project types
-   Flutter Application: A standalone, fully-functional Flutter application.
-   Flutter Plugin: A plugin is a kind of bridge that you develop between a native feature like camera API in Android and iOS.
-   Flutter Package: A package is a flutter application written solely using Dart.
    It doesn't have much to do with the Native functionalities.
-   Flutter Module: A module is a set of functionalities that you want to use in your app. 
    It is a custom code that does a specific task but can be used for other apps in the future. So, you keep it handy.