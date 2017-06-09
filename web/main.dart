import 'dart:html';

void main() {
  final ButtonElement capture = document.querySelector('#capture');
  capture.onClick.listen((event) {
    final VideoElement video = document.querySelector('#video');
    final CanvasElement canvas = document.querySelector('#canvas');
    final AnchorElement download = document.querySelector('#download');

    canvas.setAttribute('width', video.videoWidth.toString());
    canvas.setAttribute('height', video.videoHeight.toString());
    canvas.context2D.drawImage(video, 0, 0);

    download.setAttribute('href', canvas.toDataUrl('image/png'));
  });
}
