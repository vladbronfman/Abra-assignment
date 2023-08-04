# grabbed here: https://medium.com/globant/how-to-add-a-basic-unit-test-to-a-python-flask-app-using-pytest-79e61da76fc2
import json
def test_index(app, client):
    res = client.get('/')
    assert res.status_code == 200
    expected = {'hello': 'world'}
    assert expected == json.loads(res.get_data(as_text=True))
