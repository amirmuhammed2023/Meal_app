import 'package:flutter/material.dart';

class detailsmealcolumn extends StatefulWidget {
  const detailsmealcolumn({super.key, required this.description});
  final String description;
  @override
  State<detailsmealcolumn> createState() => _detailsmealcolumnState();
}

class _detailsmealcolumnState extends State<detailsmealcolumn> {
  bool isshow = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Details : ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 8,
            ),
            isshow == false
                ? Text(
                    widget.description,
                    style: TextStyle(fontSize: 16),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  )
                : Text(
                    widget.description,
                    style: TextStyle(fontSize: 16),
                  ),
            Center(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        isshow = !isshow;
                      });
                    },
                    child: Text(isshow == false ? "Show more" : "Show less")))
          ],
        ),
      ),
    );
  }
}
