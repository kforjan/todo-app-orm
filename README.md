# Todo - Flutter application for saving your todo list

Flutter application that helps you to remember all the tasks you have to do.

## About
The purpose of this project was learning how to use an ORM, such as Moor, in Flutter. It is used for storing todo tasks and simple data that is related to the task. State management used in this project is BLoC.

## Setup
  1. Clone the repository using the link below:
  ```
  https://github.com/kforjan/todo-app-orm.git
  ```
  2. Go to the project root and execute the following commands:
  ```
  flutter pub get
  flutter run
  ```


## Used packages
  * [moor_flutter](https://pub.dev/packages/moor_flutter) &nbsp; - &nbsp; ORM for storing data locally using, built ontop of SQLite
  * [bloc](https://pub.dev/packages/bloc) &nbsp; - &nbsp; state management
  * [flutter_bloc](https://pub.dev/packages/flutter_bloc) &nbsp; - &nbsp; widgets for bloc implementation
  * [get_it](https://pub.dev/packages/get_it) &nbsp; - &nbsp; service locator for dependency injection


## Features
  * Saving todo tasks in local memory using Moor
  * Deletion of meals from local memory
  * Display of all existing tasks

## Preview
Storing data           |  Deleting data
:-------------------------:|:-------------------------:
![Storing data preview](https://s3.gifyu.com/images/todo-orm-preview.md.gif) | ![Deleting data preview](https://s3.gifyu.com/images/todo-orm-deletion-preview.md.gif)
