#!/usr/bin/env bash

if [ ! -d "./dist" ]; then
  mkdir dist
fi

tflite_convert --saved_model_dir ./saved_model/ --output_file ./dist/mobilenetv1.withoutmeta.tflite
