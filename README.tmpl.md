---
license: llama3.1
library_name: transformers
tags:
  - moe
  - frankenmoe
  - merge
  - mergekit
base_model:
  - Joseph717171/Llama-3.1-SuperNova-8B-Lite_TIES_with_Base
  - ArliAI/Llama-3.1-8B-ArliAI-RPMax-v1.2
---

# L3.1-Moe-2x8B-v0.2

This model is a Mixture of Experts (MoE) made with mergekit-moe. It uses the following base models:

- [Joseph717171/Llama-3.1-SuperNova-8B-Lite_TIES_with_Base](https://huggingface.co/Joseph717171/Llama-3.1-SuperNova-8B-Lite_TIES_with_Base)
- [ArliAI/Llama-3.1-8B-ArliAI-RPMax-v1.2](https://huggingface.co/ArliAI/Llama-3.1-8B-ArliAI-RPMax-v1.2)

Heavily inspired by [mlabonne/Beyonder-4x7B-v3](https://huggingface.co/mlabonne/Beyonder-4x7B-v3).

## Quantized models

### GGUF by [mradermacher](https://huggingface.co/mradermacher)

- [mradermacher/L3.1-Moe-2x8B-v0.2-i1-GGUF](https://huggingface.co/mradermacher/L3.1-Moe-2x8B-v0.2-i1-GGUF)
- [mradermacher/L3.1-Moe-2x8B-v0.2-GGUF](https://huggingface.co/mradermacher/L3.1-Moe-2x8B-v0.2-GGUF)

## Mergekit config

```yaml
base_model: Joseph717171/Llama-3.1-SuperNova-8B-Lite_TIES_with_Base
gate_mode: hidden
dtype: bfloat16
experts:
  - source_model: Joseph717171/Llama-3.1-SuperNova-8B-Lite_TIES_with_Base
    positive_prompts: &common_prompts
      - "chat"
      - "assistant"
      - "tell me"
      - "explain"
      - "I want"
      - "code"
      - "python"
      - "javascript"
      - "programming"
      - "algorithm"
      - "reason"
      - "math"
      - "mathematics"
      - "solve"
      - "count"
    negative_prompts: &rp_prompts
      - "storywriting"
      - "write"
      - "scene"
      - "story"
      - "character"
  - source_model: ArliAI/Llama-3.1-8B-ArliAI-RPMax-v1.2
    positive_prompts: *rp_prompts
    negative_prompts: *common_prompts
```
