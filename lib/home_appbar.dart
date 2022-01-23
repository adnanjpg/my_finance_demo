import 'package:flutter/material.dart';

import 'utils/utils.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(halfDefPaddingSize),
        child: Row(
          children: const [
            _CustomBackButton(
              prevRouteName: 'Stats',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomBackButton extends StatelessWidget {
  final String? prevRouteName;
  const _CustomBackButton({this.prevRouteName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ColorTable.primary,
            border: Border.all(
              color: ColorTable.clrs_5,
              width: 2,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: ColorTable.clrs_5,
            ),
            child: InkWell(
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onTap: () {
                // this should be the behaviour, however, as we're
                // building a singlew page demonsitiration, this
                // will throw an error.
                // Navigator.of(context).pop();
              },
            ),
          ),
        ),
        if (prevRouteName != null)
          Text(
            prevRouteName!,
            style: Theme.of(context).textTheme.caption,
          ),
      ].joinWidgetList((index) => const SizedBox(width: halfDefPaddingSize)),
    );
  }
}
