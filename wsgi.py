from pygments import highlight
from pygments.formatters import HtmlFormatter
from pygments.lexers import get_lexer_by_name
from pygments.styles import get_style_by_name
from flask import Flask, render_template


app = Flask(__name__)


@app.route("/", methods=["GET"])
def index():
    return render_template('index.html')


@app.route('/info', methods=["GET"])
def info():
    style = get_style_by_name('colorful')
    lexer = get_lexer_by_name("python", stripall=True)
    formatter = HtmlFormatter(cssclass="codehilite", style=style)
    with open(__file__) as f:
        result = highlight(f.read(), lexer, formatter)
    return result


if __name__ == "__main__":
    app.run(debug=True)
