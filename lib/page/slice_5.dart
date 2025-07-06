import 'package:flutter/material.dart';
import 'package:slicing_1/page/api/fetchApi.dart';

class Slice5 extends StatelessWidget {
  const Slice5({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: fetchApi(), builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      }
      else if (snapshot.hasError) {
        return Text("Error ${snapshot.error}");
      }
      else if (snapshot.hasData) {
        final value = snapshot.data;
        return ListView.builder(
          itemCount: value!.length,
          itemBuilder: (context, index) {
            final item = value[index];
            return Center(child: Text("${item.id}, ${item.title}m ${item.subtitle}"));
        });
      } else {
        return Text("Tidak ada data");
      }
    });
  }
}
