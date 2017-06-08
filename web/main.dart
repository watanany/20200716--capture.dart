import 'dart:developer';
import 'dart:html';

void main() {
  final capture = document.querySelector('#capture');
  capture.onClick.listen((event) {
    final video = document.querySelector('#video');
    final canvas = document.querySelector('#canvas');
    final download = document.querySelector('#download');

    canvas.setAttribute('width', video.videoWidth);
    canvas.setAttribute('height', video.videoHeight);
    canvas.context2D.drawImage(video, 0, 0);

    download.setAttribute('href', canvas.toDataUrl('image/png'));
  });
}
