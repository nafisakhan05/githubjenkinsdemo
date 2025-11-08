from python:3.14-slim
Run pip install streamlit
WORKDIR /var
COPY app.py .
EXPOSE 8501
CMD ["streamlit", "Run", "etl.py"]