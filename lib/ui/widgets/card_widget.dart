import 'package:flutter/material.dart';
import 'package:ftfl_technology_task/ui/widgets/clip_container.dart';
import 'package:ftfl_technology_task/ui/widgets/clipper_set_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double clippedWidth = 150;
    final double clippedHeight = 40;
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width - 20;

    return Container(
      margin: EdgeInsets.all(15),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ClipPath(
            clipper:
                ClipContainer(cutHeight: clippedHeight, cutWidth: clippedWidth),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                border: Border.all(),
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.blue.withOpacity(0.5),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset("assets/card.png"),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Icon(
                            Icons.lock_outline,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: width - clippedWidth,
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: "Card Status : ",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "Inactive",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          ClipperSetWidget(
            text: "Guide",
            clippedWidth: clippedWidth,
            clippedHeight: clippedHeight,
          )
        ],
      ),
    );
  }
}
