class Servico {
  final String id;
  final String cliente;
  final String descricao;
  final int quantidade;
  final String data;
  final String observacao;
  String status; //vai mudar o valor por isso nao é final

  Servico({
    required this.id,
    required this.cliente,
    required this.descricao,
    required this.quantidade,
    required this.data,
    required this.observacao,
    required this.status
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cliente': cliente,
      'descricao': descricao,
      'quantidade': quantidade,
      'data': data,
      'observacao': observacao,
      'status': status,
    };
  }

  factory Servico.fromJson(Map<String, dynamic> json) {
    return Servico (
      id: json['id'],
      cliente: json['cliente'],
      descricao: json['descricao'],
      quantidade: json['quantidade'],
      data: json['data'],
      observacao: json['observacao'],
      status: json['status'],
    );
  }
} 