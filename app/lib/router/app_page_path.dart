/// アプリ内で使用するページのパス
final class AppPagePath {
  static const auth = '/auth';
  static const home = '/home';
  static const quest = '/quest';
  static const questDetail = ':questId';
  static const questAdd = 'add';
  static const root = '/';
  static const settings = '/settings';
  static const license = 'license';
  static const theme = 'theme';
  static const feeds = '/feeds';
}

/// 認証済みであることが前提のパス
const authorizedPaths = [
  AppPagePath.home,
  AppPagePath.quest,
  AppPagePath.questDetail,
  AppPagePath.questAdd,
  AppPagePath.settings,
];
