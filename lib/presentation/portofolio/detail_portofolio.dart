import 'package:dicoding_flutter/presentation/component/portofolio_view.dart';
import 'package:flutter/material.dart';

class PortofolioDetail extends StatefulWidget {
  final PortofolioData data;

  const PortofolioDetail({super.key, required this.data});

  @override
  State<PortofolioDetail> createState() => _PortofolioDetailState();
}

class _PortofolioDetailState extends State<PortofolioDetail> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    onPressed() {
      setState(() {
        isVisible = !isVisible;
      });
    }

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(widget.data.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: LayoutBuilder(builder: (ctx, constraint) {
            return constraint.maxWidth < 600
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 0,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.network(widget.data.imageUrl),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextButton.icon(
                          style: ButtonStyle(
                              foregroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onSurface),
                              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
                              padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
                              splashFactory: NoSplash.splashFactory,
                              backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.surface),
                              elevation: const MaterialStatePropertyAll(1)
                          ),
                          onPressed: onPressed,
                          label: Icon(isVisible
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_right),
                          icon: const Text("Description",
                              style: TextStyle(fontSize: 21))),
                      const SizedBox(
                        height: 8,
                      ),
                      Visibility(
                        visible: isVisible,
                        child: Text(
                          widget.data.description,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Card(
                          elevation: 0,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.network(widget.data.imageUrl),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton.icon(
                                style: ButtonStyle(
                                    foregroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onSurface),
                                    overlayColor: const MaterialStatePropertyAll(Colors.transparent),
                                    padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
                                    splashFactory: NoSplash.splashFactory,
                                    backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.surface),
                                    elevation: const MaterialStatePropertyAll(1)
                                ),
                                onPressed: onPressed,
                                label: Icon(isVisible
                                    ? Icons.keyboard_arrow_down
                                    : Icons.keyboard_arrow_right),
                                icon: const Text("Description",
                                    style: TextStyle(fontSize: 21))),
                            const SizedBox(
                              height: 8,
                            ),
                            Visibility(
                              visible: isVisible,
                              child: Text(
                                widget.data.description,
                                style: const TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
          }),
        ),
      ),
    );
  }
}
