class Database {
  static final Database _instance = Database._internal();

  Database._internal();

  factory Database.getInstance() {
    return _instance;
  }

  void createDatabase() {
    print("Database instance created!");
  }
}

void main() {
  Database db1 = Database.getInstance();
  Database db2 = Database.getInstance();

  db1.createDatabase();
  db2.createDatabase();

  if (db1 == db2) {
    print("Both instances are the same. Singleton applied successfully!");
  } else {
    print("Singleton pattern not applied correctly.");
  }
}
