# Black-Box-Tuning for Language-Model-as-a-Service

## Updates

- 2024/09/30: Added support for DeepSeek and LLaMA models. :clap:

## Introduction

Black-Box Tuning (BBT) is a gradient-free method for fine-tuning large language models (LLMs) for few-shot learning tasks. It optimizes a sequence of soft prompt tokens prepended to the input of LLMs, without requiring gradients or backpropagation. As a result, pre-trained LLMs can be viewed as black-box models and deployed efficiently as part of a Language-Model-as-a-Service (LMaaS) infrastructure.

This repository is based on the original work presented in the papers:

- [Black-Box Tuning for Language-Model-as-a-Service (ICML 2022)](https://arxiv.org/abs/2201.03514)
- [BBTv2: Towards a Gradient-Free Future with Large Language Models (EMNLP 2022)](https://arxiv.org/abs/2205.11200)

**In this version, support for DeepSeek and LLaMA models has been added, further expanding the framework's versatility across different architectures.**

The original repo is [here](https://github.com/txsun1997/Black-Box-Tuning).

## Prepare your environment

To get started with Black-Box Tuning, set up your environment by installing the necessary dependencies:

```bash
conda create --name bbt python=3.8
conda activate bbt
pip install transformers
pip install fastNLP
pip install datasets
pip install cma
pip install scikit-learn
git clone https://github.com/txsun1997/Black-Box-Tuning
cd Black-Box-Tuning
```
