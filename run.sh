time python bbt.py \
  --task_name "sst2" \
  --n_prompt_tokens 50 \
  --intrinsic_dim 500 \
  --k_shot 16 \
  --device "cuda:0" \
  --seed 42 \
  --loss_type "ce" \
  --cat_or_add "add" \
  --budget 100 \
  --print_every 1 \
  --eval_every 100 \
  --model_name "roberta-base" \
  # --max_train_samples 32 \
  # --max_dev_samples 32 \
  # --max_test_samples 100
