import 'package:flutter/material.dart';
import 'package:slicing_1/page/api/fetchApi.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Slice5 extends StatelessWidget {
  const Slice5({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: fetchApi(),
        builder: (context, listener) {
          if (listener.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (listener.hasError) {
            return Text("Has some error ${listener.hasError}");
          } else if (listener.hasData) {
            final value = listener.data!;
            return ListView.builder(
              itemCount: value.length,
              itemBuilder: (context, index) {
                final data = value[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.grey),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2.r, 2.r),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: CircleAvatar(child: Text("${data.id}"),),
                    title: Text(data.title, maxLines: 1,overflow: TextOverflow.ellipsis,),
                    subtitle: Text(data.body, maxLines: 2, overflow: TextOverflow.ellipsis,),
                  ),
                );
              }
            );
          } else {
            return Text("tidak ada data");
          }
        },
      ),
    );
  }
}
