---
license: apache-2.0
tags:
- moe
- frankenmoe
- merge
- mergekit
- mergekit-moe
base_model:
- argilla-warehouse/Llama-3.1-8B-MagPie-Ultra
- sequelbox/Llama3.1-8B-PlumCode
- sequelbox/Llama3.1-8B-PlumMath
- ArliAI/Llama-3.1-8B-ArliAI-RPMax-v1.2
---

# L3.1-Moe-4x8B-v0.1

![cover](https://repository-images.githubusercontent.com/877091879/8e1b7595-1d75-4787-8e44-0a0218cdbb70)

This model is a Mixture of Experts (MoE) made with mergekit-moe. It uses the following base models:

- [argilla-warehouse/Llama-3.1-8B-MagPie-Ultra](https://huggingface.co/argilla-warehouse/Llama-3.1-8B-MagPie-Ultra)
- [sequelbox/Llama3.1-8B-PlumCode](https://huggingface.co/sequelbox/Llama3.1-8B-PlumCode)
- [sequelbox/Llama3.1-8B-PlumMath](https://huggingface.co/sequelbox/Llama3.1-8B-PlumMath)
- [ArliAI/Llama-3.1-8B-ArliAI-RPMax-v1.2](https://huggingface.co/ArliAI/Llama-3.1-8B-ArliAI-RPMax-v1.2)

Heavily inspired by [mlabonne/Beyonder-4x7B-v3](https://huggingface.co/mlabonne/Beyonder-4x7B-v3).

## Quantized models

> TODO

## Configuration

```yaml
base_model: argilla-warehouse/Llama-3.1-8B-MagPie-Ultra
gate_mode: hidden
dtype: bfloat16
experts:
  - source_model: argilla-warehouse/Llama-3.1-8B-MagPie-Ultra
    positive_prompts:
      - "chat"
      - "assistant"
      - "tell me"
      - "explain"
      - "I want"
  - source_model: sequelbox/Llama3.1-8B-PlumCode
    positive_prompts:
      - "code"
      - "python"
      - "javascript"
      - "programming"
      - "algorithm"
  - source_model: sequelbox/Llama3.1-8B-PlumMath
    positive_prompts:
      - "reason"
      - "math"
      - "mathematics"
      - "solve"
      - "count"
  - source_model: ArliAI/Llama-3.1-8B-ArliAI-RPMax-v1.2
    positive_prompts:
      - "storywriting"
      - "write"
      - "scene"
      - "story"
      - "character"
```

## License

[Apache-2.0](LICENSE)
