import 'package:flutter/material.dart';
import 'package:minions/app/utils/utils.dart';

class ShadButtonLoadingIcon extends StatelessWidget {
  const ShadButtonLoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: SizedBox.square(
        dimension: 16,
        child: CircularProgressIndicator(
          color: context.colorScheme.accent,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
