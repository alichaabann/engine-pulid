# engine-pulid

Lumamour's ComfyUI engine image: extends `runpod/worker-comfyui:5.10.0-base` with [ComfyUI-PuLID-Flux-Chroma](https://github.com/PaoloC68/ComfyUI-PuLID-Flux-Chroma) so a single reference photo (no per-woman training) can drive Chroma1-HD generations.

Pulled as `ghcr.io/alichaabann/engine-pulid:latest`. Model weights (`pulid_flux_v0.9.1.safetensors`, insightface antelopev2) live on the shared RunPod network volume `j4flxchzpm` under `/workspace/models/pulid/` and `/workspace/models/insightface/`.
