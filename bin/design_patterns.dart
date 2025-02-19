abstract class Shape {
  void revealMe();
}

class Circle implements Shape {
  @override
  void revealMe() {
    print("You chose to print circle");
  }
}

class Rectangle implements Shape {
  @override
  void revealMe() {
    print("You chose to print rectangle");
  }
}

class Square implements Shape {
  @override
  void revealMe() {
    print("You chose to print square");
  }
}

class ShapeFactory {
  Shape? getShape(String shapeType) {
    switch (shapeType.toLowerCase()) {
      case 'circle':
        return Circle();
      case 'rectangle':
        return Rectangle();
      case 'square':
        return Square();
      default:
        print("Invalid shape type");
        return null;
    }
  }
}

void main() {
  ShapeFactory shapeFactory = ShapeFactory();

  Shape? circle = shapeFactory.getShape("circle");
  circle?.revealMe();

  Shape? rectangle = shapeFactory.getShape("rectangle");
  rectangle?.revealMe();

  Shape? square = shapeFactory.getShape("square");
  square?.revealMe();
}
