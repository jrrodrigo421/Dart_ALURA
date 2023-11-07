import 'dart:convert';
import 'dart:io';

void main() async{
    final requests = await HttpServer.bind('localhost', 8888);
    await for (final request in requests){
      processRequest(request);
    }
}

    void processRequest(HttpRequest request){
      print('Enviando requisição para ${request.uri.path}');
      final response = request.response;
      if (request.uri.path == '/dart') {
        response
        ..headers.contentType = ContentType(
        'text',
        'plain',)
        ..write('Ola bem vindo ao meu servidor em dart');
      } else {
      response.statusCode = HttpStatus.notFound;
      }
      response.close();


      // void main() async {
      //   var url = Uri.parse('http://localhost:8888/dart');
      //   var httpClient = HttpClient();
      //   var request = await httpClient.getUrl(url);
      //   var response = await request.close();
      //   var data = await utf8.decoder.bind(response).toList();
      //   print('Response ${response.statusCode}: $data');
      //   httpClient.close();
      // }


    }

