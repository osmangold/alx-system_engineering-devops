#!/usr/bin/python3
"""Exports to-do list information of all employees to JSON format."""
import json
import requests

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/todos"
    response = requests.get(url)
    todos = response.json()

    # Create an empty dictionary to store tasks by user ID
    tasks_by_user = {}

    # Fill dictionary with tasks
    for todo in todos:
        if todo["userId"] not in tasks_by_user:
            tasks_by_user[todo["userId"]] = []
        task = {"username": "", "task": "", "completed": False}
        task["username"] = requests.get("https://jsonplaceholder.typicode.com/users/{}".format(todo["userId"])).json()["username"]
        task["task"] = todo["title"]
        task["completed"] = todo["completed"]
        tasks_by_user[todo["userId"]].append(task)

    # Convert dictionary to JSON string
    json_string = json.dumps(tasks_by_user)

    # Write JSON string to file
    with open("todo_all_employees.json", "w") as file:
