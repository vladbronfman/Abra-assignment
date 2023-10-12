FROM kodekloud/webapp-color
WORKDIR /opt
COPY ./app.py .
ENV APP_COLOR=red
ENTRYPOINT ["python", "app.py"]
