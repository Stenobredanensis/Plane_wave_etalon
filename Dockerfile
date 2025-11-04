FROM python:3.13-slim

# Optional: Grundlegende Tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888
# Jupyter ohne Browser, hört auf 0.0.0.0, Token bleibt aktiv (sicherer)
CMD ["python", "-m", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
