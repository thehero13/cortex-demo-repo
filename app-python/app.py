import os
import pickle
import sqlite3
import subprocess
import hashlib

import yaml
from flask import Flask, request

app = Flask(__name__)


@app.route("/user")
def get_user():
    # SQL injection
    user_id = request.args.get("id")
    conn = sqlite3.connect("users.db")
    return str(conn.execute("SELECT * FROM users WHERE id = '%s'" % user_id).fetchall())


@app.route("/ping")
def ping():
    # Command injection
    host = request.args.get("host")
    return subprocess.check_output("ping -c 1 " + host, shell=True)


@app.route("/load", methods=["POST"])
def load():
    # Insecure deserialization
    return str(pickle.loads(request.data))


@app.route("/config", methods=["POST"])
def config():
    # Unsafe YAML load
    return str(yaml.load(request.data, Loader=yaml.Loader))


@app.route("/file")
def read_file():
    # Path traversal
    name = request.args.get("name")
    with open(os.path.join("/var/data", name)) as f:
        return f.read()


def hash_password(pw):
    # Weak hashing
    return hashlib.md5(pw.encode()).hexdigest()


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
