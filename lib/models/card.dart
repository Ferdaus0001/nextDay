
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
          title: Text(
            "Your Invoices",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search by customer name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            // Tab Bar
            TabBar(
              isScrollable: true,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorColor: Colors.red,
              tabs: [
                Tab(text: "All"),
                Tab(text: "Paid"),
                Tab(text: "Unpaid"),
                Tab(text: "Due"),
                Tab(text: "Overdue"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // All Tab Content
                  InvoiceList(),
                  // Other Tabs (repeated for simplicity)
                  InvoiceList(),
                  InvoiceList(),
                  InvoiceList(),
                  InvoiceList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InvoiceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: 4, // Number of invoices
      itemBuilder: (context, index) {
        // Colors and statuses for each invoice
        List<Map<String, dynamic>> invoiceStatuses = [
          {'status': 'Paid', 'color': Colors.green},
          {'status': 'Unpaid', 'color': Colors.orange},
          {'status': 'Due', 'color': Colors.red},
          {'status': 'Overdue', 'color': Colors.blue},
        ];

        return Card(
          margin: EdgeInsets.only(bottom: 16.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Status Color Indicator
                Container(
                  width: 5,
                  height: 100,
                  decoration: BoxDecoration(
                    color: invoiceStatuses[index]['color'],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(width: 16),
                // Invoice Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Professional Template",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 4),
                      Text("Client Name: Claudia Felix"),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Status: ${invoiceStatuses[index]['status']}",
                            style: TextStyle(
                              color: invoiceStatuses[index]['color'],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Amount Invoiced: \$120.00",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
