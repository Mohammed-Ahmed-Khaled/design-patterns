# Shape Factory Pattern in Dart

## Overview
This project demonstrates the **Factory Design Pattern** in Dart by creating a `Shape` class and a `ShapeFactory` to generate objects dynamically.

## Features
- Uses an abstract `Shape` class with a `revealMe()` method.
- Implements concrete classes: `Circle`, `Rectangle`, and `Square`.
- Uses `ShapeFactory` to return the appropriate shape object based on input.
- Prevents the need to specify exact classes during object creation.