import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learncallapi/models/company_model.dart';
import 'package:learncallapi/modual/company/company_container.dart';
import 'package:learncallapi/modual/company/company_model.dart';
import 'package:learncallapi/modual/emlopee/emlopee_page.dart';
import 'package:learncallapi/services/company_service.dart';
import 'package:learncallapi/widgets/slidable_widget.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  _CompanyScreenState createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  CompanyModel companyModel = new CompanyModel();
  @override
  void widgetsBindingAsyncCallback(
      BuildContext context, CompanyModel model) async {
    await model.initData();
  }

  final companyService = CompanyService();
  List<Company> company = [];
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
    _currentMax = _currentMax + 6;
    setState(() {});
  }

  void _getEvent() async {
    setState(() => _isLoading = true);
    company = await companyService.getEvent();
    // company = await companyervice.getEvent();
    setState(() => _isLoading = false);
    print('.............${companyModel}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Company Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body:
       _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.teal,
              ),
            )
          : 
          ListView.builder(
              controller: _scrollController,
              itemCount: company.length,
              itemBuilder: (context, index) => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.5),
                child: SlidableWidget(
                  child: CompanyContainer(
                    company: company[index],
                    child: EmlopeeScreen(),
                  ),
                  onTap: () => {
                    setState(() {
                      company.remove(company[index]);
                      // companyModel.company.remove(companyModel.company[index]);
                    })
                  },
                  onDismissed: (action) => dismissSlidableItem(context, true),
                ),
              ),
            ),
    );
  }
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
