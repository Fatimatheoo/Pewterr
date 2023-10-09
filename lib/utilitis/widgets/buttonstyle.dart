import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

final ButtonStyle ButtonOne = ElevatedButton.styleFrom(
    minimumSize: Size(160,38),
    backgroundColor: AppTheme.bgColor,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    )
);

final ButtonStyle ButtonTwo = ElevatedButton.styleFrom(
  minimumSize:  Size(160,38),
  backgroundColor: Colors.white,
  elevation: 0,
  side: BorderSide(
    color: AppTheme.fontdimColor,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
);

final ButtonStyle StyleOne = ElevatedButton.styleFrom(
  minimumSize:  Size(155,37),
  backgroundColor: Colors.white,
  elevation: 0,
  side: BorderSide(
    color: AppTheme.fontdimColor,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
);
