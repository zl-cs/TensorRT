#! /bin/bash

model_name="efficientdet-d0 efficientdet-d1 efficientdet-d2 efficientdet-d3 efficientdet-d4 efficientdet-d5 efficientdet-d6 efficientdet-d7"



for name in $model_name
do
	python3 build_engine_noint8.py \
    --onnx ./efficientdet_onnx_16_9/$name.onnx \
    --engine ./efficientdet_plan/$name.plan \
    --precision fp16
done

