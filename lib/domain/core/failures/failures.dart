
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class MainFailure with _$MainFailure{
   factory MainFailure.clientFailure()=_clientFailure;
   const factory MainFailure.serverFailure()=_serverFailure;

}