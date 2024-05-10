import "package:dio/dio.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";

class CustomHttpService {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      headers: {
        "accept": "application/json",
        'content-type': 'application/json',
        "Authorization": "Bearer ${dotenv.env['API_KEY']}",
      },
    ),
  );
}
