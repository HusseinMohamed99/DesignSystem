part of './../export_manager/export_manager.dart';

void showSelectPhotoOptions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: 25.topBorderRadius,
    ),
    builder: (context) => DraggableScrollableSheet(
      initialChildSize: 0.28,
      maxChildSize: 0.28.spMax,
      minChildSize: 0.20.spMin,
      expand: false,
      builder: (context, scrollController) {
        // Build Custom Widget
        return Container();
      },
    ),
  );
}
