import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_version.freezed.dart';

/// UpdateVersion
///
/// {@category Model}
@freezed
abstract class UpdateVersion implements _$UpdateVersion {
  const factory UpdateVersion({
    required String force,
    required String optional,
  }) = _UpdateVersion;

  const UpdateVersion._();

  bool forceUpdatable(String version) => _updatable(version, force);

  bool optionalUpdatable(String version) => _updatable(version, optional);

  bool _updatable(String currentVersion, String updateVersion) {
    final currentVersionList =
        currentVersion.split('.').map(int.parse).toList();
    final updateVersionList = updateVersion.split('.').map(int.parse).toList();
    for (var i = 0; i < currentVersionList.length; i++) {
      if (currentVersionList[i] < updateVersionList[i]) {
        return true;
      }
    }
    return false;
  }
}

/// FakeUpdateVersion
const fakeUpdateVersion = UpdateVersion(
  force: '1.0.0',
  optional: '1.0.0',
);
