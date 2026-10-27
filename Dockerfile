FROM runpod/worker-comfyui:5.10.0-base

RUN git clone --depth 1 https://github.com/PaoloC68/ComfyUI-PuLID-Flux-Chroma.git /comfyui/custom_nodes/ComfyUI-PuLID-Flux-Chroma \
    && pip install --no-cache-dir -r /comfyui/custom_nodes/ComfyUI-PuLID-Flux-Chroma/requirements.txt \
    && cd /comfyui && python -c "import sys; sys.path.insert(0, '/comfyui/custom_nodes/ComfyUI-PuLID-Flux-Chroma'); from pulidflux import NODE_CLASS_MAPPINGS; assert 'ApplyPulidFlux' in NODE_CLASS_MAPPINGS; print('PuLID nodes:', list(NODE_CLASS_MAPPINGS))"
