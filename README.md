# Licence Plate Detection using TensorFlow Lite
This is a fork of the following repo: https://github.com/Arijit1080/Licence-Plate-Detection-using-TensorFlow-Lite, which is covered in this YouTube video: https://www.youtube.com/watch?v=kwrLK71fP1Q . That repo came with a pre-trained model in `./saved_model`, but that was a `.pd` file, and not a `.tflite` one.

My fork adds some scripts that convert the instructional's .pd model into a .tflite model that's usable in the [TensorFlow Lite Object Detection Demo](https://github.com/tensorflow/examples/tree/master/lite/examples/object_detection). I tested the Android one, and it's simply a matter of replacing the `app/src/main/assets/mobilenetv1.tflite` file with the one that this package generates.

## Prerequites
Run `pip install tensorflow==2.13.1`. There's a [bug with TensorFlow 2.14.0 that will prevent the scripts from working](https://github.com/ultralytics/ultralytics/issues/5161).

Then run `pip install tflite_support`.

## Instructions
Build the model, or use the existing sample which is in `./saved_model`.

Run `./bin/convert_to_tflite.sh`. This will create a file in `./dist` that does not have the necessary metadata.

Run `python bin/add_metadata_to_tflite.py`. This will create the final `./dist/mobilenetv1.tflite`.
