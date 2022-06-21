class Usuario {
  String? periodo;
  String? curso;

  Usuario({this.periodo, this.curso});

  Usuario.fromJson(Map<String, dynamic> json) {
    periodo = json['periodo'];
    curso = json['curso'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['periodo'] = this.periodo;
    data['curso'] = this.curso;
    return data;
  }
}
