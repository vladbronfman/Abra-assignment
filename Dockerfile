FROM kodekloud/webapp-color
WORKDIR /opt
COPY ./app.py .
ENV APP_COLOR=blue
ENTRYPOINT ["python", "app.py"]
