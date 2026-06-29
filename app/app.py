from flask import Flask, render_template

app = Flask(__name__)

destinations = [
    {
        "name": "Goa",
        "description": "Enjoy beautiful beaches and nightlife."
    },
    {
        "name": "Jaipur",
        "description": "Explore forts, palaces and Rajasthani culture."
    },
    {
        "name": "Manali",
        "description": "Perfect destination for mountains and adventure."
    }
]


@app.route("/")
def home():
    return render_template(
        "index.html",
        destinations=destinations
    )


@app.route("/health")
def health():
    return {
        "status": "healthy"
    }


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)