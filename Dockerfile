# Use a lightweight Python base image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
# This step is separated to leverage Docker's layer caching.
# If only requirements.txt changes, this layer will be rebuilt.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project directory into the container
# This copies all notebooks, prompt.txt, pisa_history.txt, etc.
COPY . .

# Expose the port Jupyter Notebook will run on
EXPOSE 8888

# Set environment variables for API keys.
# IMPORTANT: Replace 'your_default_key_here' with actual keys or
# pass them during `docker run` using -e flags (recommended for production).
# For local testing, you can set defaults here.
ENV OPENAI_API_KEY="your_openai_key_here"
ENV ANTHROPIC_API_KEY="your_anthropic_key_here"
ENV XAI_API_KEY="your_xai_key_here"
ENV GOOGLE_API_KEY="your_google_key_here"
ENV MISTRAL_API_KEY="your_mistral_key_here"
ENV NVIDIA_API_KEY="your_nvidia_key_here"
ENV HF_TOKEN="your_huggingface_token_here"
# If using Ollama within Docker, you'd typically run Ollama in a separate container
# or ensure it's accessible from the host. For simplicity, this Dockerfile assumes
# Ollama is run externally or you're using cloud-based LLMs.

# Command to run Jupyter Notebook when the container starts
# --allow-root is needed if running as root user (common in Docker)
# --no-browser prevents Jupyter from trying to open a browser window inside the container
# --port 8888 specifies the port
# --ip 0.0.0.0 makes it accessible from outside the container
CMD ["jupyter", "notebook", "--allow-root", "--no-browser", "--port=8888", "--ip=0.0.0.0"]