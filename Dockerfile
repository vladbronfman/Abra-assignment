FROM kodekloud/webapp-color
WORKDIR /opt
COPY ./app.py .
ENV APP_COLOR=green
ENTRYPOINT ["python", "app.py"]
