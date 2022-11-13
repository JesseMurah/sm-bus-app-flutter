import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/cupertino.dart';
import 'package:my_app/utils/app_layout.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 150,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
            )
          ],
        ),
      ),
    );
  }
}
