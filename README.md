# AI Agent Development with LangChain and LangGraph

This repository contains a series of Jupyter Notebooks demonstrating the development of advanced AI agents using LangChain and LangGraph. The primary focus is on building a "Helpful Historical Expert" agent that leverages Retrieval-Augmented Generation (RAG) for factual grounding, state management with LangGraph for complex workflows, and robust guardrails to ensure safe and on-topic interactions.

## Repository Purpose

The goal of this repository is to showcase different iterations of building intelligent conversational agents, progressing from basic LLM interactions to more sophisticated RAG-enabled, stateful agents. It highlights how to integrate various Large Language Models (LLMs) and manage their behavior through detailed system prompts and LangGraph workflows.

>> Repository showcasing advanced AI agent development using LangChain and LangGraph, featuring RAG, state management, guardrails, and integration with OpenAI, Anthropic Claude, and XAI Grok LLMs.

## Project Structure
```
.
├── notebooks/
│   ├── 01_basic_openai_llm.ipynb
│   ├── 02_langchain_openai_chat.ipynb
│   ├── 03_langchain_rag_openai_expert.ipynb
│   ├── 04_langchain_rag_anthropic_expert.ipynb
│   ├── 05_langchain_rag_grok_expert.ipynb
│   ├── 06_langchain_rag_gemini_expert.ipynb
│   └── 07_langchain_rag_ollama_expert.ipynb
├── prompt.txt
├── pisa_history.txt
├── requirements.txt
└── README.md

```

---
## Notebook Details

### 1. `01_basic_openai_llm.ipynb` (Basic OpenAI LLM Interaction)

* **Description:** This notebook demonstrates the foundational steps of interacting with an LLM (specifically OpenAI's GPT-4) directly using the `openai` Python client. It covers setting up the API key and making a simple chat completion request, including how to correctly access the model's response.
* **Key Technologies:** `openai` Python library, GPT-4.
* **Setup:**
    * Ensure your `OPENAI_API_KEY` environment variable is set.
    * No external text files are required for this basic example.

### 2. `02_langchain_openai_chat.ipynb` (LangChain Historical Expert with OpenAI Chat and Guardrails)

* **Description:** This notebook introduces LangChain for building a more structured AI agent. It focuses on defining a "Helpful Historical Expert" persona and implementing comprehensive guardrails (scope adherence, factuality, safety, etc.) through a detailed system prompt loaded from an external file (`prompt.txt`). It uses OpenAI's models via LangChain's `langchain-openai` integration.
* **Key Technologies:** LangChain (`langchain-openai`), GPT-4.
* **Setup:**
    * Ensure your `OPENAI_API_KEY` environment variable is set.
    * Create a `prompt.txt` file in the same directory as the notebook (content provided in the notebook's instructions).

### 3. `03_langchain_rag_openai_expert.ipynb` (LangChain RAG Expert with LangGraph State Management - OpenAI)

* **Description:** This notebook significantly enhances the agent by integrating Retrieval-Augmented Generation (RAG) and state management using LangGraph. The agent can now retrieve information from a local knowledge base (`pisa_history.txt`) before generating responses. It utilizes OpenAI's models for both generation and embeddings.
* **Key Technologies:** LangChain (`langchain-openai`), LangGraph, FAISS, OpenAI GPT-4.
* **Setup:**
    * Ensure your `OPENAI_API_KEY` environment variable is set.
    * Create a `prompt.txt` file (same as above).
    * Create a `pisa_history.txt` file (knowledge base, content provided in the notebook's instructions).

### 4. `04_langchain_rag_anthropic_expert.ipynb` (LangChain RAG Expert with LangGraph State Management - Anthropic)

* **Description:** This notebook is an iteration of the RAG-LangGraph example, but it switches the core Large Language Model to Anthropic's Claude 3 Sonnet. It demonstrates the flexibility of LangChain to swap out LLM providers while maintaining the RAG pipeline, state management, and guardrails. OpenAI embeddings are still used for the vector store.
* **Key Technologies:** LangChain (`langchain-anthropic`, `langchain-openai` for embeddings), LangGraph, FAISS, Anthropic Claude 3 Sonnet.
* **Setup:**
    * Ensure your `ANTHROPIC_API_KEY` and `OPENAI_API_KEY` (for embeddings) environment variables are set.
    * Create a `prompt.txt` file (same as above).
    * Create a `pisa_history.txt` file (knowledge base, content provided in the notebook's instructions).

### 5. `05_langchain_rag_grok_expert.ipynb` (LangChain RAG Expert with LangGraph State Management - XAI Grok)

* **Description:** This notebook is another iteration of the RAG-LangGraph example, this time integrating XAI Grok as the core Large Language Model. It further showcases the adaptability of the LangChain and LangGraph framework to different LLM providers while preserving the RAG pipeline, state management, and guardrails. OpenAI embeddings are still used for the vector store.
* **Key Technologies:** LangChain (`langchain-xai`, `langchain-openai` for embeddings), LangGraph, FAISS, XAI Grok.
* **Setup:**
    * Ensure your `XAI_API_KEY` and `OPENAI_API_KEY` (for embeddings) environment variables are set.
    * Create a `prompt.txt` file (same as above).
    * Create a `pisa_history.txt` file (same as above).

### 6. `06_langchain_rag_gemini_expert.ipynb` (LangChain RAG Expert with LangGraph State Management - Gemini)

* **Description:** This notebook extends the RAG-LangGraph agent by integrating Google's Gemini API as the core Large Language Model. It demonstrates how to seamlessly switch to Gemini while leveraging the established RAG pipeline, LangGraph for state management, and the comprehensive guardrails defined in `prompt.txt`. OpenAI embeddings are still used for the vector store for consistency.
* **Key Technologies:** LangChain (`langchain-google-genai`, `langchain-openai` for embeddings), LangGraph, FAISS, Google Gemini.
* **Setup:**
    * Ensure your `GOOGLE_API_KEY` and `OPENAI_API_KEY` (for embeddings) environment variables are set.
    * Create a `prompt.txt` file (same as above).
    * Create a `pisa_history.txt` file (same as above).

### 7. `07_langchain_rag_ollama_expert.ipynb` (LangChain RAG Expert with LangGraph State Management - Ollama)

* **Description:** This notebook continues the series by integrating Ollama as the local Large Language Model provider. It showcases how to use a locally run LLM with the existing RAG pipeline, LangGraph for state management, and the comprehensive guardrails. This is ideal for local development and privacy-focused applications. OpenAI embeddings are still used for the vector store for consistency, but you could also explore Ollama's embedding models.
* **Key Technologies:** LangChain (`langchain-ollama`, `langchain-openai` for embeddings), LangGraph, FAISS, Ollama (with a local model like Llama2).
* **Setup:**
    * **Install Ollama:** Follow instructions on [ollama.com](https://ollama.com/) to install Ollama and pull a model (e.g., `ollama pull llama2`).
    * Ensure your Ollama server is running.
    * Ensure your `OPENAI_API_KEY` (for embeddings) environment variable is set.
    * Create a `prompt.txt` file (same as above).
    * Create a `pisa_history.txt` file (same as above).

## General Setup for All Notebooks

Before running any of the notebooks, ensure you have a Python environment set up and the necessary packages installed. Each notebook's first cell includes `%pip install -U ...` commands to install its specific dependencies.

### Initial File Preparation

After cloning this repository, please ensure the following files are located in the **root directory** of the repository (the same directory as this `README.md` file):

* `requirements.txt`
* `prompt.txt`
* `pisa_history.txt`

These files are crucial for the notebooks to function correctly, especially for loading system prompts and knowledge base content.

**Common Files:**

* **`requirements.txt`**: Lists all Python dependencies needed for the notebooks.
* **`prompt.txt`**: This file defines the system-level instructions, persona, and guardrails for the AI agent. It is used by `02_langchain_openai_chat.ipynb` through `07_langchain_rag_ollama_expert.ipynb`.
* **`pisa_history.txt`**: This file serves as the local knowledge base for RAG. It is used by `03_langchain_rag_openai_expert.ipynb` through `07_langchain_rag_ollama_expert.ipynb`.

## API Key Acquisition Links

You will need API keys from the respective providers to run these examples. It is highly recommended to store these as environment variables rather than hardcoding them in your notebooks.

* **OpenAI API Key (`OPENAI_API_KEY`):**
    * Used for basic LLM interactions (Notebook 1).
    * Used for the LLM in Notebooks 2 and 3.
    * Used for embeddings in RAG examples (Notebooks 3, 4, 5, 6 & 7).
    * Get your key here: [OpenAI API Keys](https://platform.openai.com/account/api-keys)

* **Anthropic API Key (`ANTHROPIC_API_KEY`):**
    * Used for the Claude 3 Sonnet LLM in Notebook 4.
    * Get your key here: [Anthropic Console](https://console.anthropic.com/settings/keys)

* **XAI Grok API Key (`XAI_API_KEY`):**
    * Used for the Grok LLM in Notebook 5.
    * Get your key here: [XAI Docs: Get Started](https://docs.x.ai/docs/get-started) (You'll need to sign up and generate a key from their console).

* **Google Gemini API Key (`GOOGLE_API_KEY`):**
    * Used for the Gemini LLM in Notebook 6.
    * Get your key here: [Google AI Studio](https://aistudio.google.com/app/apikey)

* **Ollama (No API Key, Local Server):**
    * Used for the Ollama LLM in Notebook 7.
    * **Installation:** [ollama.com](https://ollama.com/)
    * **Model Pulling Example:** `ollama pull llama2` (run in your terminal after installing Ollama)

## How to Run

1.  **Clone the Repository:**
    ```bash
    git clone <repository_url>
    cd <repository_name>
    ```
2.  **Set Environment Variables:** Before launching Jupyter, set your API keys:
    ```bash
    export OPENAI_API_KEY='your_openai_key'
    export ANTHROPIC_API_KEY='your_anthropic_key'
    export XAI_API_KEY='your_xai_key'
    export GOOGLE_API_KEY='your_google_key'
    # Ollama does not use an API key, but ensure its server is running.
    # export OLLAMA_BASE_URL='http://localhost:11434' # (Optional, if not default)
    ```
    *(Replace `your_..._key` with your actual keys.)*
3.  **Create and Activate Virtual Environment:**
    ```bash
    python -m venv venv
    # On macOS/Linux:
    source venv/bin/activate
    # On Windows (Command Prompt):
    venv\Scripts\activate.bat
    # On Windows (PowerShell):
    .\venv\Scripts\Activate.ps1
    ```
4.  **Install Dependencies:**
    ```bash
    pip install -r requirements.txt
    ```
5.  **Install Jupyter Kernel for the Environment:**
    ```bash
    python -m ipykernel install --user --name=my_ai_expert_env --display-name "Python (AI Expert Env)"
    ```
6.  **Launch Jupyter Notebook:**
    ```bash
    jupyter notebook
    ```
7.  **Open and Run Notebooks:** Navigate to the `notebooks/` directory and open each `.ipynb` file. Select the "Python (AI Expert Env)" kernel. Run the cells sequentially. If you encounter `ModuleNotFoundError` after installation, ensure your virtual environment is active and try restarting the Jupyter kernel and running the setup cell again.


## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Contributors
Nithin Mohan (@nithinmohantk)
