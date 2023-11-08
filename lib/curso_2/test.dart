import 'dart:html';

//testando biblioteca para manipular HTML, deu erro pois to executando via CLI
// mas também temos essa possibilidade no dart.

void main(){
  Element idElement = querySelector('#testeId')!;

  List<Element> textInputElements = querySelectorAll('input[type="text"]');

  var anchor = querySelector('#example') as AnchorElement;

  funcAnchor(anchor);

  var elem = ParagraphElement();
  elem.text = 'testaaaando';

  var elem2 = Element.html('<p>Creating <em> is </em> easy! </p>');

  document.body!.children.add(elem2);

}

void funcAnchor(AnchorElement anchor){
  anchor.href = 'https://dart.dev';

}

