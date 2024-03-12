/*
 * Định nghĩa thư viện các hàm tiện ích về hộp thoại
 * 
 * 10/3/2024 Cập nhật lab2
 */

import 'package:flutter/material.dart';

Future<bool?> showConfirmDialog(BuildContext context, String message) {
  return showDialog(
    context: context, 
    builder: (ctx) =>AlertDialog(
      icon: const Icon(Icons.warning),
      title: const Text('Are you sure?'),
      content: Text(message),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ActionBution(
                actionText: 'NO',
                onPressed: (){
                  Navigator.of(ctx).pop(false);
                },
              ),
            ),
            Expanded(
              child: ActionBution(
                actionText: 'YES',
                onPressed: () {
                  Navigator.of(ctx).pop(true);
                }
              ),
              ),
          ],
          ),
      ],
     ),
    );
}

/*
 * Trong đó, widget ActionButton được định nghĩa như sau (vẫn trong
 * lib/ui/shared/dialog_utils.dart)
 */
class ActionBution extends StatelessWidget {
  //Hàm xây dựng
  const ActionBution({
    super.key,
    this.actionText,
    this.onPressed,
    });
    final String? actionText;
    final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
       child: Text(
        actionText?? 'OKEY',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 24,
        ),
      ),
    );
  }
}
/**
 * Hàm showDialog(context, builder): hiển thị một hộp thoại phía trên nội dung hiện thời. 
 * Tham số builder là hàm tạo widget Dialog. Hai dạng widget Dialog phổ biến: 
 * AlertDialog và SimpleDialog. 
 * ================
 * Các thuộc tính quan trọng của một AlertDialog là title: tựa đề hội thoại, 
 * content: nội dung chính hội thoại và actions: dòng các nút tương tác với 
 * hội thoại
 */