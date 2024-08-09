/// Список констант для работы с SVG иконками из ассетов пакета.
enum AssetIcon {
  accomodat('$_svgRoot/accommodat-24px.svg'),
  add('$_svgRoot/add-24px.svg'),
  barChart('$_svgRoot/bar-chart-24px.svg'),
  arrowDown('$_svgRoot/arrow-down-24px.svg'),
  arrowLeft('$_svgRoot/arrow-left-24px.svg'),
  arrowLeftDiv('$_svgRoot/arrow-left-div-24px.svg'),
  arrowRight('$_svgRoot/arrow-right-24px.svg'),
  arrowRightDiv('$_svgRoot/arrow-right-div-24px.svg'),
  arrowUp('$_svgRoot/arrow-up-24px.svg'),
  bell('$_svgRoot/bell-24px.svg'),
  calendar('$_svgRoot/calendar-24px.svg'),
  calendarAdd('$_svgRoot/calendar-add-24px.svg'),
  calendarView('$_svgRoot/calendar-view-24px.svg'),
  camera('$_svgRoot/camera-24px.svg'),
  checkMark('$_svgRoot/check_mark-24px.svg'),
  close('$_svgRoot/close-24px.svg'),
  comment('$_svgRoot/comment-24px.svg'),
  eat('$_svgRoot/eat-24px.svg'),
  edit('$_svgRoot/edit-24px.svg'),
  externalLink('$_svgRoot/external_link-24px.svg'),
  eyeNo('$_svgRoot/eye-no-24px.svg'),
  eyeYes('$_svgRoot/eye-yes-24px.svg'),
  filter('$_svgRoot/filter-24px.svg'),
  graphic('$_svgRoot/graphic-24px.svg'),
  info('$_svgRoot/info-24px.svg'),
  location('$_svgRoot/location-24px.svg'),
  mail('$_svgRoot/mail-24px.svg'),
  messageWrite('$_svgRoot/message-write-24px.svg'),
  phone('$_svgRoot/phone-24px.svg'),
  search('$_svgRoot/search-24px.svg'),
  sendFill('$_svgRoot/send-fill-24px.svg'),
  starFill('$_svgRoot/star-fill-24px.svg'),
  starStroke('$_svgRoot/star-stroke-24px.svg'),
  task('$_svgRoot/task-24px.svg'),
  teams('$_svgRoot/teams-24px.svg'),
  telegram('$_svgRoot/telegram-24px.svg'),
  tickets('$_svgRoot/tickets-24px.svg'),
  transfer('$_svgRoot/transfer-24px.svg'),
  transport('$_svgRoot/transport-24px.svg'),
  user('$_svgRoot/user-24px.svg'),
  avatar('$_svgRoot/avatar.svg'),
  pin('$_svgRoot/pin.svg');

  const AssetIcon(this.path);

  final String path;

  static const _assetRoot = 'assets';
  static const _svgRoot = '$_assetRoot/svg/icons';
}
