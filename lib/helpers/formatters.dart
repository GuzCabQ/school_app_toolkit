import 'package:intl/intl.dart';

class Formatters {
  String formatDate(DateTime dateTime, String formatoFecha) {
    // dd-MMM-yyyy
    // dd-MM-yyyy
    // dd-MM-yyyy KK:mm
    // EEEE-dd-MM-yyyy
    final String fecha = DateFormat(formatoFecha, 'es_MX').format(dateTime);
    return fecha;
  }
}
