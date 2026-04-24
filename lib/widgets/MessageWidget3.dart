import 'package:flutter/material.dart';
import '../utils/SizeConfig.dart';

class MessageWidget3 extends StatelessWidget {
  const MessageWidget3({
    Key? key,
    required this.headLine,
    required this.subTitle,
    required this.imagePath,
    required this.color,
    required this.callback,
  }) : super(key: key);

  final String headLine;
  final String subTitle;
  final String imagePath;
  final Color color;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Padding(
        padding: EdgeInsets.only(right: SizeConfig.width(10)),
        child: Container(
          width: SizeConfig.width(180),
          height: SizeConfig.height(170),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(SizeConfig.width(8)),
            boxShadow: [
              BoxShadow(
                offset: const Offset(3, 3),
                blurRadius: 5,
                color: Colors.black.withOpacity(0.3),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.width(10)),
            child: Column(
              children: [

                /// IMAGE
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(SizeConfig.width(6)),
                    child: Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                      width: SizeConfig.width(60),
                      height: SizeConfig.height(60),
                    ),
                  ),
                ),

                SizedBox(height: SizeConfig.height(6)),

                /// TEXT AREA
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        headLine,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(height: SizeConfig.height(4)),
                      Text(
                        subTitle,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}