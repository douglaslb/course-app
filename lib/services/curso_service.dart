import 'package:dio/dio.dart';
import 'package:nac_cursos/models/curso_model.dart';
import 'package:nac_cursos/services/service_config.dart';

class CursoService {
  static final String _endpoint = "https://5f6caf7734d1ef0016d58742.mockapi.io";

  static final String _resource = '/courses';

  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<CursoModel>> findAll() async {
    List<CursoModel> list = new List<CursoModel>();

    try {
      Response response = await service.create().get(_resource);
      if (response.statusCode == 200) {
        response.data.forEach(
          (value) {
            list.add(
              CursoModel.fromMap(value),
            );
          },
        );
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }

    return list;
  }

  Future<CursoModel> getById(int id) async {
    try {
      String endpoint = _resource + "/" + id.toString();
      Response response = await service.create().get(endpoint);

      if (response.statusCode == 200) {
        var retorno = CursoModel.fromMap(response.data);
        return retorno;
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<void> delete(CursoModel cursoModel) async {
    try {
      String endpoint = _resource + "/" + cursoModel.id.toString();

      Response response = await service.create().delete(
            endpoint,
          );

      if (response.statusCode != 200) {
        throw Exception("Não foi possível excluir o curso!");
      }
    } catch (error) {
      throw error;
    }
  }
}
