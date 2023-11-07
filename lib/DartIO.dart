import 'dart:convert';
import 'dart:io';
import 'dart:math';

/*
* A biblioteca dart:io fornece APIs
* para lidar com arquivos, diretórios, processos, soquetes, WebSockets e HTTP clientes e servidores.

 Importante: Somente aplicativos Flutter não web, scripts de linha de comando,
 *  e os servidores podem importar e usar , não aplicativos Web.dart:io
*
*
* */

void main() async{
  var config = File('config.txt');

  var stringContents = await config.readAsString();
  // print('O arquivo é ${stringContents.length} ');

  var lines = await config.readAsLines();
  // print('imprimindo ${lines.length}');

  var content = await config.readAsBytes();
  // print('imprimindo content ${content.length}');

  //utlizando trycatch

  //manipulando erros...

  try{
    print('Imrpimindo stringContents $stringContents');
  }catch(e){
    print(e);
  }


  //usando API Stream e await for para leitura do arquivo:

  Stream<List<int>> inputStream = config.openRead();
  var linesInput = utf8.decoder.bind(inputStream).transform(const LineSplitter());
  try{
    await for (final line in linesInput){
      print('IMPRIMINDO caracteres da leitura da Stream ${line.length}');
    }
    print('Arquivo fechado');
  }catch(e){
    print(e);
  }

  // IOSink para gravar dados em um arquivo:

  var logFile =  File('log.txt');
  // var sink = logFile.openWrite();


  var sink = logFile.openWrite(mode: FileMode.append);
  sink.write('Arquivo acessado ${DateTime.now()}\n');

  await sink.flush();
  await sink.close();

  // Localizar todos os arquivos e subdiretórios de um diretório é assíncrono operação.

  var dir = Directory('/dart-sdk');


  try{
    var dirList = dir.list();
    await for (final FileSystemEntity f in dirList){
      if (f is File){
        print('Found file ${f.path}');
      }else if(f is Directory){
        print('Found dir ${f.path}');
      }
    }
  }catch(e){
    print(e);
  }

  ///Outras funcionalidades comuns
  // As classes File e Directory contêm outras funcionalidades, incluindo mas não limitado a:
  //
  // Criando um arquivo ou diretório: em Arquivo e diretóriocreate()
  // Excluindo um arquivo ou diretório: em Arquivo e Diretóriodelete()
  // Obtendo o comprimento de um arquivo: em Arquivolength()
  // Obtendo acesso aleatório a um arquivo: em Arquivoopen()

}


