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
                        value: 99,
                        text: '%',
                      ),
                      label: 'Dedicated',
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 60,
                        text: '%',
                      ),
                      label: 'Hardworker',
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
                        value: 90,
                        text: '%',
                      ),
                      label: 'Quick Learner',
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 101,
                        text: '%',
                      ),
                      label: 'Human',
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
                    value: 99,
                    text: '%',
                  ),
                  label: 'Dedication',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 60,
                    text: '%',
                  ),
                  label: 'Hardworker',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 90,
                    text: '%',
                  ),
                  label: 'Quick Learner',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 101,
                    text: '%',
                  ),
                  label: 'Human',
                ),
              ],
            ),
    );
  }
}
