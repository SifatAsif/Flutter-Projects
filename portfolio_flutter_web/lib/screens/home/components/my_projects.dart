import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/responsive.dart';
import 'package:portfolio_flutter_web/screens/home/components/project_card.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Responsive(
            mobile: ProjectsGridview(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            tablet: ProjectsGridview(
              childAspectRatio: 1.1,
            ),
            mobileLarge: ProjectsGridview(
              crossAxisCount: 2,
              childAspectRatio: 1.1,
            ),
            desktop: ProjectsGridview(),
          ),
        ],
      ),
    );
  }
}

class ProjectsGridview extends StatelessWidget {
  const ProjectsGridview({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.2,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
