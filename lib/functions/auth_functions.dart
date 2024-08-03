String validatePhoneNumner(String phoneNumber) {
  if (phoneNumber.isEmpty) {
    return "Phone number should not be empty";
  } else if (phoneNumber.length != 10) {
    return "Phone number should contains exactly 10 numbers";
  }
  return "";
}
