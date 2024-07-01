import 'package:flutter/material.dart';
import 'package:web_01/model.dart';

class PaginaWeb extends StatefulWidget {
  const PaginaWeb({super.key});

  @override
  State<PaginaWeb> createState() => _PaginaWebState();
}

class _PaginaWebState extends State<PaginaWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
              itemCount: datainfo.length,
              itemBuilder: (context, index) {
                final data = datainfo[index];
                return HoverItem(data: data);
              }),
        ),
      ),
    );
  }
}

class HoverItem extends StatefulWidget {
  final ObjectWeb data;
  const HoverItem({super.key, required this.data});

  @override
  State<HoverItem> createState() => _HoverItemState();
}

class _HoverItemState extends State<HoverItem> {
  bool animate = false;
  bool textAppear = false;

  void change(bool a) {
    setState(() {
      if (a) {
        textAppear = true;
      } else {
        textAppear = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = animate ? 320 : 275;
    double width = animate ? 520 : 280;
    Color color = animate ? widget.data.color2 : widget.data.color1;
    BorderRadius border =
        animate ? BorderRadius.circular(40.0) : BorderRadius.circular(300.0);

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          animate = true;
          change(animate);
        });
      },
      onExit: (_) {
        setState(() {
          animate = false;
          change(animate);
        });
      },
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0, 0),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: AnimatedContainer(
                height: height,
                width: width,
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: border,
                  color: color,
                ),
                child: AnimatedOpacity(
                  opacity: textAppear ? 1 : 0,
                  duration: Duration(milliseconds: textAppear ? 300 : 100),
                  curve: Curves.easeOut,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.data.title,
                          style: const TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                          ),
                          width: 270,
                          child: Text(
                            widget.data.descripcion,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0),
            child: AnimatedContainer(
              padding: EdgeInsets.only(left: animate ? 250 : 0),
              duration: const Duration(milliseconds: 200),
              height: height + 40,
              child: Image(
                image: AssetImage(widget.data.imagen),
                fit: BoxFit.fitHeight,
              ),
            ),
          )
        ],
      ),
    );
  }
}
