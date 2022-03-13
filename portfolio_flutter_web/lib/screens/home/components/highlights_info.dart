import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/responsive.dart';
import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'high_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: defaultPadding, bottom: defaultPadding, top: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      counter: AnimatedCounter(
                        value: 100,
                        text: '+',
                      ),
                      label: 'Subscribers',
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 100,
                        text: '+',
                      ),
                      label: 'Subscribers',
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      counter: AnimatedCounter(
                        value: 100,
                        text: '+',
                      ),
                      label: 'Subscribers',
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 100,
                        text: '+',
                      ),
                      label: 'Subscribers',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(
                    value: 100,
                    text: '+',
                  ),
                  label: 'Subscribers',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 100,
                    text: '+',
                  ),
                  label: 'Subscribers',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 100,
                    text: '+',
                  ),
                  label: 'Subscribers',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 100,
                    text: '+',
                  ),
                  label: 'Subscribers',
                ),
              ],
            ),
    );
  }
}
