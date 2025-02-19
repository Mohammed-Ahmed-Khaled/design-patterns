abstract class Payment {
  void pay(double amount);
}

class CashPayment implements Payment {
  @override
  void pay(double amount) {
    print("Paid \$$amount using Cash.");
  }
}

class CreditPayment implements Payment {
  @override
  void pay(double amount) {
    print("Paid \$$amount using Credit Card.");
  }
}

class PaymentProcessor {
  final Payment paymentMethod;

  PaymentProcessor(this.paymentMethod);

  void processPayment(double amount) {
    paymentMethod.pay(amount);
  }
}

void main() {
  PaymentProcessor cashProcessor = PaymentProcessor(CashPayment());
  cashProcessor.processPayment(100);

  PaymentProcessor creditProcessor = PaymentProcessor(CreditPayment());
  creditProcessor.processPayment(250);
}
