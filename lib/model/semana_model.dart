//responsavel por gravar informações do cardapio da semana

class SemanaCardapio {
  String? data;
  String? cafe;
  String? almoco;
  String? lache;
  String? jantar;

  SemanaCardapio({this.data, this.cafe, this.almoco, this.lache, this.jantar});

  SemanaCardapio.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    cafe = json['cafe'];
    almoco = json['almoco'];
    lache = json['lache'];
    jantar = json['jantar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['cafe'] = this.cafe;
    data['almoco'] = this.almoco;
    data['lache'] = this.lache;
    data['jantar'] = this.jantar;
    return data;
  }
}
