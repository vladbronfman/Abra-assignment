# grabbed here : https://medium.com/globant/how-to-add-a-basic-unit-test-to-a-python-flask-app-using-pytest-79e61da76fc2
import pytestfrom app import app as flask_app
@pytest.fixture
def app():
    yield flask_app
@pytest.fixture
def client(app):
    return app.test_client()
