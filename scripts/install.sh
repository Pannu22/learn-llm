#!/bin/sh

echo "Starting installation ..."
eval "$(conda shell.bash hook)"
py_env="llm"
conda create --name $py_env python=3.13

conda activate $py_env
echo "Env activated $py_env"

pip install -q 'litellm[google]' langchain langchain-community langchain-openai langchain-litellm redis redisvl python-dotenv

echo "Setup done. Execute:-"
echo "conda activate $py_env"
