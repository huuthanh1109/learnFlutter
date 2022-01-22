import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learncallapi/models/company_model.dart';

class CompanyContainer extends StatelessWidget {
  final Company company;
  const CompanyContainer({Key? key, required this.company}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${company.ResultId}",
            style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            "${company.DescriptionA}",
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
          SizedBox(height: 4),
          Text(
            "${DateFormat("dd/MM/yyyy").format(DateFormat("yyyy-MM-dd").parse(company.UpdatedTime))}",
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
