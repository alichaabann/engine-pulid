FROM runpod/worker-comfyui:5.10.0-base

RUN git clone --depth 1 https://github.com/PaoloC68/ComfyUI-PuLID-Flux-Chroma.git /comfyui/custom_nodes/ComfyUI-PuLID-Flux-Chroma \
    && pip install --no-cache-dir facexlib insightface onnxruntime-gpu
