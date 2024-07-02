import 'package:booky/proto/generated/booky.pbenum.dart';

String trackToString(Track track) {
  switch (track) {
    case Track.TRACK_APPLIED_ARTIFICIAL_INTELLIGENCE:
      return 'AI';
    case Track.TRACK_DATA_SCIENCE:
      return 'DS';
    case Track.TRACK_CORE:
      return 'All';
    case Track.TRACK_CYBER_SECURITY:
      return 'CS';
    case Track.TRACK_GAME_DEVELOPMENT:
      return 'GD';
    case Track.TRACK_SOFTWARE_DEVELOPMENT:
      return 'SD';
    case Track.TRACK_ROBOTICS:
      return 'RO';
    case Track.TRACK_UNKNOWN:
      return 'TBA'; // To Be Announced.
  }
  return '';
}

Track? stringToTrack(String? track) {
  switch (track) {
    case 'AI':
      return Track.TRACK_APPLIED_ARTIFICIAL_INTELLIGENCE;
    case 'DS':
      return Track.TRACK_DATA_SCIENCE;
    case 'All':
      return Track.TRACK_CORE;
    case 'CS':
      return Track.TRACK_CYBER_SECURITY;
    case 'GD':
      return Track.TRACK_GAME_DEVELOPMENT;
    case 'SD':
      return Track.TRACK_SOFTWARE_DEVELOPMENT;
    case 'RO':
      return Track.TRACK_ROBOTICS;
    case 'TBA':
      return Track.TRACK_UNKNOWN;
  }
  return null;
}
