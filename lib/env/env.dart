import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
    @EnviedField(varName: 'TMDB_KEY', obfuscate: true)
    static final String tmdbApiKey = _Env.tmdbApiKey;
}