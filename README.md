# plane-wave-etalon
Etalon interference demo
A simple simulation of a Fabry–Pérot resonator (two identical planar mirrors) under plane-wave illumination. This first notebook should be seen as a first step of a series to completely simulate the field seen by a dipole emitter between two mirrors.

# plane-wave-etalon

Minimal, reproducible setup to explore plane-wave interference in an etalon using a Jupyter notebook.

- **Language / runtime:** Python 3.13
- **Core libs:** NumPy, Matplotlib
- **Recommended:** Docker for a zero-friction, reproducible environment

---

## Quick start (Docker)

Build the image (from repo root, where `Dockerfile` lives):

```bash
docker build -t etalon:py313
docker run --rm -it \
  -p 8890:8888 \
  -v "$PWD":/workspace \
  -u "$(id -u):$(id -g)" \
  -e JUPYTER_TOKEN=etalon \
  --name etalon \
  etalon:py313


---

### `LICENSE` (MIT)

MIT License

Copyright (c) 2025 <Jakob Keck>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
