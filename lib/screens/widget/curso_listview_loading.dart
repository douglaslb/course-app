import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CursoListViewLoading extends StatelessWidget {
  const CursoListViewLoading({
    Key key,
  }) : super(key: key);

  static const _highLightColor = Color.fromRGBO(120, 120, 120, .1);
  static const _baseColor = Colors.white;
  static const _duration = Duration(milliseconds: 2000);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.only(bottom: 120),
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      scrollDirection: Axis.vertical,
      children: List<Widget>.generate(
        6,
        (int index) {
          return SizedBox(
            height: 280,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          child: Shimmer.fromColors(
                        baseColor: _baseColor,
                        highlightColor: _highLightColor,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(220, 220, 220, 0.3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16.0)),
                            // border: new Border.all(
                            //     color: DesignCourseAppTheme.notWhite),
                          ),
                        ),
                      )),
                      const SizedBox(
                        height: 48,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 24, right: 16, left: 16),
                    child: Shimmer.fromColors(
                      baseColor: _baseColor,
                      highlightColor: _highLightColor,
                      child: Container(
                        height: 85,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(220, 220, 220, 0.3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 32.0,
        crossAxisSpacing: 32.0,
        childAspectRatio: 0.8,
      ),
    );
  }
}
