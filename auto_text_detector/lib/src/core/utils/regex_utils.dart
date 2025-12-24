class RegexUtils {
  static final url = RegExp(
    r'(https?:\/\/[^\s]+)',
    caseSensitive: false,
  );

  static final email = RegExp(
    r'[\w\.-]+@[\w\.-]+\.\w+',
  );

  static final phone = RegExp(
    r'(\+?\d{1,4}[\s-]?)?\d{10}',
  );
}
