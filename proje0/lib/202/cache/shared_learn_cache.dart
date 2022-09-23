import 'package:flutter/material.dart';
import 'package:proje0/202/cache/shared_manager.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateful<SharedLearn> {
  int _currentValue = 0;
  late final SharedManager _manager;
  late final List<User> userItems;

  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    userItems = UserItems().users;
    _initialize();
  }

  Future<void> _initialize() async {
    _changeLoading();
    await _manager.init();
    _changeLoading();
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    //final prefs = await SharedPreferences.getInstance();
    //final int? counter = prefs.getInt('counter');
    _onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
  }

  void _onChangeValue(String value) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentValue.toString()),
        actions: [
          _loading(context),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _saveValueButton(),
          _removeValueButton(),
        ],
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              _onChangeValue(value);
            },
          ),
          Expanded(
            child: _UserListView(),
          ),
        ],
      ),
    );
  }

  SingleChildRenderObjectWidget _loading(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          )
        : const SizedBox.shrink();
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () async {
        _changeLoading();
        _manager.saveString(SharedKeys.counter, _currentValue.toString());
        _changeLoading();
      },
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
      child: const Icon(Icons.delete),
      onPressed: () async {
        _changeLoading();
        await _manager.removeItem(SharedKeys.counter);
        _changeLoading();
      },
    );
  }
}

class _UserListView extends StatelessWidget {
  _UserListView({
    Key? key,
  }) : super(key: key);
  final List<User> users = UserItems().users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text(users[index].name),
            subtitle: Text(users[index].description),
            trailing: Text(users[index].url),
          ),
        );
      },
    );
  }
}

class User {
  final String name;
  final String description;
  final String url;

  User(this.name, this.description, this.url);

  static List? fromJson(Map<String, dynamic> json) {
    return null;
  }

  Object? toJson() {
    return null;
  }
}

class UserItems {
  late final List<User> users;
  UserItems() {
    users = [
      User('vb1', '100', 'asdad0'),
      User('vb2', '101', 'asdad1'),
      User('vb3', '102', 'asdad2'),
    ];
  }
}

abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
