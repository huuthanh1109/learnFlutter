import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learncallapi/models/emlopee_model.dart';
import 'package:learncallapi/services/emlopee_service.dart';
import 'package:learncallapi/widgets/slidable_widget.dart';

class EmlopeeScreen extends StatefulWidget {
  const EmlopeeScreen({Key? key}) : super(key: key);

  @override
  _EmlopeeScreenState createState() => _EmlopeeScreenState();
}

class _EmlopeeScreenState extends State<EmlopeeScreen> {
  final emlopeeService = EmlopeeService();
  List<Emlopee> emlopee = [];
  bool _isLoading = false;
  late List myList;
  ScrollController _scrollController = ScrollController();
  int _currentMax = 6;

  @override
  void initState() {
    super.initState();
    _getEvent();

    myList = List.generate(10, (i) => "Item : ${i + 1}");
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  _getMoreData() {
    for (int i = _currentMax; i < _currentMax + 10; i++) {
      myList.add("Item : ${i + 1}");
    }
    _currentMax = _currentMax + 10;

    setState(() {});
  }

  void _getEvent() async {
    setState(() => _isLoading = true);
    emlopee = await emlopeeService.getEvent();
    setState(() => _isLoading = false);
    print('emlopee.............${emlopee}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Emlopee Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            )
          : ListView.builder(
              controller: _scrollController,
              itemCount: emlopee.length,
              itemBuilder: (context, index) => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.5),
                child: SlidableWidget(
                  child: EmlopeeContainer(
                    emlopee: emlopee[index],
                  ),
                  onTap: () => {
                    setState(() {
                      emlopee.remove(emlopee[index]);
                    })
                  },
                  onDismissed: (action) => dismissSlidableItem(context, true),
                ),
              ),
            ),
    );
  }

  Widget EmlopeeContainer({required Emlopee emlopee}) => Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ResultId: ${emlopee.ResultId}'),
            const Gap(4),
            Text('Name: ${emlopee.ClassI}'),
            const Gap(4),
            Text('Contact: ${emlopee.ClassG}'),
          ],
        ),
      );
}

class Utils {
  static void showSnackBar(BuildContext context, bool check) =>
      Scaffold.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            // margin: EdgeInsets.all(5),
            content: Row(
              children: const [
                Icon(
                  CupertinoIcons.delete_solid,
                  size: 22,
                  color: Colors.white,
                ),
                SizedBox(width: 12),
                Text(
                  'Successful Delete',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        );
}

void dismissSlidableItem(BuildContext context, bool check) {
  Utils.showSnackBar(context, check);
}
