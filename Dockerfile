FROM kodekloud/webapp-color
WORKDIR /opt
ENV APP_COLOR=red
ENTRYPOINT ["python", "app.py"]
