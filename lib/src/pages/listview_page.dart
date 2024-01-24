import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final ScrollController _scrollController = ScrollController();
  final List<int> _listNumbers = [];
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _add10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _add10();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body: Stack(
        children: [_createList(), _createLoading()],
      ),
    );
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: getPage1,
      child: ListView.builder(
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index) {
          final image = _listNumbers[index];
          return FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/500/300?image=$image'),
          );
        },
        itemCount: _listNumbers.length,
      ),
    );
  }

  Future getPage1() async {
    const duration = Duration(seconds: 2);
    Timer(duration, () {
      _listNumbers.clear();
      _lastItem++;
      _add10();
    });
    return Future.delayed(duration);
  }

  void _add10() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _listNumbers.add(_lastItem);
    }
    setState(() {});
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() {});
    const duration = Duration(seconds: 2);
    return Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 200),
    );
    _add10();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 20.0)
        ],
      );
    } else {
      return Container();
    }
  }
}
