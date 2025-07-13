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
│   └── 05_langchain_rag_grok_expert.ipynb
├── prompt.txt
├── pisa_history.txt
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

## General Setup for All Notebooks

Before running any of the notebooks, ensure you have a Python environment set up and the necessary packages installed. Each notebook's first cell includes `%pip install -U ...` commands to install its specific dependencies.

**Common Files:**

* **`prompt.txt`**: This file defines the system-level instructions, persona, and guardrails for the AI agent. It is used by `02_langchain_openai_chat.ipynb`, `03_langchain_rag_openai_expert.ipynb`, `04_langchain_rag_anthropic_expert.ipynb`, and `05_langchain_rag_grok_expert.ipynb`.
* **`pisa_history.txt`**: This file serves as the local knowledge base for RAG. It is used by `03_langchain_rag_openai_expert.ipynb`, `04_langchain_rag_anthropic_expert.ipynb`, and `05_langchain_rag_grok_expert.ipynb`.

## API Key Acquisition Links

You will need API keys from the respective providers to run these examples. It is highly recommended to store these as environment variables rather than hardcoding them in your notebooks.

* **OpenAI API Key (`OPENAI_API_KEY`):**
    * Used for basic LLM interactions (Notebook 1).
    * Used for the LLM in Notebooks 2 and 3.
    * Used for embeddings in RAG examples (Notebooks 3, 4 & 5).
    * Get your key here: [OpenAI API Keys](https://platform.openai.com/account/api-keys)

* **Anthropic API Key (`ANTHROPIC_API_KEY`):**
    * Used for the Claude 3 Sonnet LLM in Notebook 4.
    * Get your key here: [Anthropic Console](https://console.anthropic.com/settings/keys)

* **XAI Grok API Key (`XAI_API_KEY`):**
    * Used for the Grok LLM in Notebook 5.
    * Get your key here: [XAI Docs: Get Started](https://docs.x.ai/docs/get-started) (You'll need to sign up and generate a key from their console).

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
    ```
    *(Replace `your_..._key` with your actual keys.)*
3.  **Launch Jupyter Notebook:**
    ```bash
    jupyter notebook
    ```
4.  **Open and Run Notebooks:** Navigate to the `notebooks/` directory and open each `.ipynb` file. Run the cells sequentially. The first cell in each notebook will install necessary packages. If you encounter `ModuleNotFoundError` after installation, try restarting the Jupyter kernel and running the setup cell again.