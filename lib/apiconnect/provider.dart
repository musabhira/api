import 'package:api4/apiconnect/apiservice.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getpostProvider = FutureProvider((ref) => ApiService().getPosts());
