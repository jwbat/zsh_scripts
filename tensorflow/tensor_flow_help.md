**TensorFlow** can make use of the GPU on MacBook Pro,
specifically those with an Apple Silicon chip (M1 or M2 series).
TensorFlow 2.5 and later has introduced support for Apple Silicon,
allowing for hardware acceleration via Apple's Metal Performance 
Shaders (MPS) framework.

To enable this, you should install the `tensorflow-macos` and `tensorflow-metal` packages,
which are specifically designed for MacBooks with the new Apple Silicon processors.
Here's a basic guide:

1. **Create a virtual environment:**  

```zsh
python3 -m venv tf-env
```

2. **Activate the environment:**  

```zsh
source tf-env/bin/activate
```

3. **Install the required packages:**

```zsh
pip install tensorflow-macos
pip install tensorflow-metal
```

4. **Run your TensorFlow code as usual.** The MPS backend will be used automatically if a compatible GPU is available.

Make sure MacOS version and Xcode are up to date to ensure compatibility.
