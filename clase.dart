//
void main(){
  //sonido del carro
    final autoSonido = new AutoImplemento();
   
  sonidoAuto( autoSonido );
 

  final auto1 = {
    'marca': 'Audi',
    'fecha': '2018',
    'color': 'Gris',
    'radio': 'Si',
    'aireAcondicionado': 'Si',
    'aros': '4',
    'quemacocos': '2'
      
  };
  final auto2 = {
    'marca': 'Mustang',
    'fecha': '2015',
    'color': 'Amarillo',
    'radio': 'Si',
    'aireAcondicionado': 'Si',
    'aros': '4',
    'quemacocos': '2'
      
  };
  final auto3 = {
    'marca': 'Mercedes',
    'fecha': '2020',
    'color': 'Blanco',
    'radio': 'Si',
    'aireAcondicionado': 'Si',
    'aros': '4',
    'quemacocos': '2'
      
  };
  final auto4 = {
    'marca': 'Toyota',
    'fecha': '2021',
    'color': 'Negro',
    'radio': 'Si',
    'aireAcondicionado': 'Si',
    'aros': '4',
    'quemacocos': '2'
      
  };
  
  
   final autos1 = Auto.fromJson( auto1 );
   final autos2 = Auto.fromJson( auto2 );
   final autos3 = Auto.fromJson( auto3 );
   final autos4 = Auto.fromJson( auto4 );

  print(autos1);
  print(autos2);
  print(autos3);
  print(autos4);

  

  
}


class Auto{
  //realizar una clase que tenga marca, año, 
 // color , radio, aire acondicionado, aros, y quemacocos.
  String marca;
  dynamic fecha;
  String color;
  String radio;
  String aireAcondicionado;
  dynamic aros;
  dynamic quemacocos;
  
  Auto({ 
    required this.marca, 
    required this.fecha,
     required this.color, 
    required this.radio,
      required this.aireAcondicionado, 
    required this.aros,
      required this.quemacocos
  });
  
  Auto.fromJson( Map<dynamic, String> json  ):
    this.marca = json['marca']!,
    this.fecha = json['fecha']!,
    this.color = json['color']!,
    this.radio = json['radio']!,
    this.aireAcondicionado = json['aireAcondicionado']!,
    this.aros = json['aros']!,
    this.quemacocos = json['quemacocos']!;


  
  
  
  String toString() {
    return 'Auto: marca: ${this.marca}, fecha: ${ this.fecha },color: ${ this.color }, radio: ${ this.radio }, aireAcondicionado: ${ this.aireAcondicionado }, aros: ${ this.aros }, quemacocos: ${ this.quemacocos }';
  }
  
}
 void sonidoAuto( Autos autos ) {
  autos.emitirSonido();
}


abstract class Autos {
  
  void emitirSonido();
  
}

class AutoImplemento implements Autos {
  
  
  void emitirSonido() => print('Sonido del clacson de los carros es: Piiiiiii');
  
}