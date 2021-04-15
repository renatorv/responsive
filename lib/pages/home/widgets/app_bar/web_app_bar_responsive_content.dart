import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          print(
            'biggest: ${constraints.biggest} smallest: ${constraints.smallest}',
          );

          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey[600]),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 4),
                      IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.grey[500],
                          onPressed: () {}),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise alguma coisa',
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                const SizedBox(width: 8),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Aprender',
                  ),
                  textColor: Colors.white,
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(width: 8),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Flutter',
                  ),
                  textColor: Colors.white,
                ),
              ]
            ],
          );
        },
      ),
    );
  }
}
