import 'package:flutter/material.dart';

import '../widgets/github_item_widget.dart';
import '../widgets/loading_widget.dart';
import '../../models/github.dart';
import '../../view/main_screen.dart';

class FavoritePage extends StatefulWidget {
  final bool isLoading;
  final Function(String, {Object arguments}) navigate;
  final List<GitHub> dbGitHub;
  final Function refresh;
  final Function addToDb;
  final Function deleteFromDb;

  const FavoritePage({
    Key key,
    @required this.isLoading,
    @required this.navigate,
    @required this.dbGitHub,
    @required this.refresh,
    @required this.addToDb,
    @required this.deleteFromDb,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      child: RefreshIndicator(
        onRefresh: _onRefresh,
        child: LoadingWidget(
          isLoading: (widget.isLoading && widget.dbGitHub.length == 0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.dbGitHub.length,
            itemBuilder: (context, index) {
              if (widget.dbGitHub.length != 0) {
                return GitHubItemWidget(
                  onTap: widget.navigate,
                  gitHub: widget.dbGitHub[index],
                  addToDb: widget.addToDb,
                  deleteFromDb: widget.deleteFromDb,
                );
              } else {
                return Center(child: Text("Null data"));
              }
            },
          ),
        ),
      ),
    );
  }

  Future _onRefresh() {
    widget.refresh();
    return Future.value();
  }
}
