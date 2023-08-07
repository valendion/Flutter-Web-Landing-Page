import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class IFrame extends StatelessWidget {
  const IFrame({super.key, required this.sizeIframe});
  final String sizeIframe;
  @override
  Widget build(BuildContext context) {
    final IFrameElement iFrameElement = IFrameElement();

    iFrameElement.style.height = sizeIframe;
    iFrameElement.style.width = sizeIframe;
    // Alamat Maps Kalian
    iFrameElement.src =
        '''https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d995.0172516461361!2d119.63196726955303!3d-4.0062363619199175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d95bb81304227cd%3A0xb9d83b691004e1e0!2sLina%20Kios!5e0!3m2!1sid!2sid!4v1690437271624!5m2!1sid!2sid''';
    iFrameElement.style.border = 'none';

// ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => iFrameElement,
    );

    final Widget iframeWidget = HtmlElementView(
      viewType: 'iframeElement',
      key: UniqueKey(),
    );
    return SizedBox(
        height: MediaQuery.sizeOf(context).height / 1.5,
        width: MediaQuery.sizeOf(context).width / 1.5,
        child: iframeWidget);
  }
}
