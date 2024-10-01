#!/bin/bash

# 定义数据集列表
datasets=("qnli")

# 定义其他参数
n_prompt_tokens=50
intrinsic_dim=500
k_shot=16
device="cuda:0"
seed=42
loss_type="ce"
cat_or_add="add"
budget=50
print_every=20
eval_every=100
model_name="llama"
max_train_samples=32
max_dev_samples=32
max_test_samples=100

# 遍历每个数据集并执行命令
for dataset in "${datasets[@]}"
do
  echo "Running task for dataset: $dataset"
  time python bbt.py \
    --task_name "$dataset" \
    --n_prompt_tokens "$n_prompt_tokens" \
    --intrinsic_dim "$intrinsic_dim" \
    --k_shot "$k_shot" \
    --device "$device" \
    --seed "$seed" \
    --loss_type "$loss_type" \
    --cat_or_add "$cat_or_add" \
    --budget "$budget" \
    --print_every "$print_every" \
    --eval_every "$eval_every" \
    --model_name "$model_name" \
    --max_train_samples "$max_train_samples" \
    --max_dev_samples "$max_dev_samples" \
    --max_test_samples "$max_test_samples"
done
