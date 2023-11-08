// testando mixing:
/*
No contexto do Dart, "mixins" são uma forma de reutilização de código que permite que uma classe herde
funcionalidades de uma ou mais classes sem herdar toda a implementação dessas classes.
Mixins são frequentemente usados para compartilhar código entre classes que não
têm uma relação direta de herança.

 */


// Definindo um mixin
mixin LogMixin {
  void log(String message) {
    print(message);
  }
}

// Classe que usa o mixin
class MyClass with LogMixin {
  void doSomething() {
    log("Fazendo algo...");
  }
}

void main() {
  var myObject = MyClass();
  myObject.doSomething();
  myObject.log('testando mixing')
}
