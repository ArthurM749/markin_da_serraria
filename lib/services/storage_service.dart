import 'dart:convert';

import 'package:gladnomushdeswitcher/models/servico.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _key = 'servicos';
  final SharedPreferencesAsync _prefs = SharedPreferencesAsync();
  Future<List<Servico>> carregarServicos() async {
    final String? dados = await _prefs.getString(_key);
    if (dados == null || dados.isEmpty) {
      return [];
    }
    final List<dynamic> lista = jsonDecode(dados);
    return lista.map((item) => Servico.fromJson(item)).toList();
  }

  Future<void> salvarServicos(List<Servico> servicos) async {
    final String dados = jsonEncode(servicos.map((s) => s.toJson()).toList());
    await _prefs.setString(_key, dados);
  }
}
