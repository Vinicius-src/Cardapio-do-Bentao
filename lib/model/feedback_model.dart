//responsavel por guardar a informações do feedback para enviar no banco de dados
class Feedback {
  String? data;
  String? periodo;
  String? curso;
  String? feedback;

  Feedback({this.data, this.periodo, this.curso, this.feedback});

  Feedback.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    periodo = json['periodo'];
    curso = json['curso'];
    feedback = json['feedback'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['periodo'] = this.periodo;
    data['curso'] = this.curso;
    data['feedback'] = this.feedback;
    return data;
  }
}
