import 'dart:async';

void main() {
  List convidados = ["Thales", "João", "Paulo", "Marcos"];

  final controller = StreamController();

  final subscription = controller.stream.where((data) {
    return convidados.contains(data);
  }).listen((data) {
    print(data);
  });

  controller.sink.add("Thales");
  controller.sink.add("Leticia");
  controller.sink.add("Paulo");
  controller.sink.add("Leo");
  //controller.sink.add("Olá Streams!");
  //controller.sink.add(20);
  controller.close();
}