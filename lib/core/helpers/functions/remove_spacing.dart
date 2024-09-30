part of './../export_manager/export_manager.dart';

//Remove space from the input text
TextEditingController _controller = TextEditingController();
void onTextChanged(String value) {
  String newValue = value.replaceAll(' ', '');
  if (newValue != value) {
    _controller.value = _controller.value.copyWith(
      text: newValue,
      selection: TextSelection.fromPosition(
        TextPosition(
          offset: newValue.length,
        ),
      ),
    );
  }
}
