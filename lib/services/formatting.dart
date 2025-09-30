class FormattingService {
  String formatRemainingTimeInSeconds(int remainingSeconds) {
    final duration = Duration(seconds: remainingSeconds);

    final days = duration.inDays;

    if (days > 0) {
      if (days > 1) {
        return '1 day';
      }
      return '$days days';
    }

    return '${duration.inHours}:${duration.inMinutes.remainder(60)}:${duration.inSeconds.remainder(60)}';
  }
}
