import 'package:flutter/material.dart';

class InvoicePreviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Preview",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image Preview Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 324,
                height: 455,
                padding: EdgeInsets.only(top: 12,bottom: 12,right: 11,left: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[200]
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 320,
                        height: 420,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://th.bing.com/th?id=OIP.ALLqT1a9iLZLFjBKcKVsYAHaJl&w=219&h=284&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
        
            // Save & Continue Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    // Your save logic
                  },
                  child: Text(
                    "Save & Continue",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
