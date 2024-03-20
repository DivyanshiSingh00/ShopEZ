from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('login.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        # Validate username and password (e.g., check against database)
        if username == 'admin' and password == 'password':
            # Successful login, redirect to dashboard
            return redirect(url_for('dashboard'))
        else:
            # Invalid credentials, display error message
            error = 'Invalid username or password. Please try again.'
            return render_template('login.html', error=error)
    else:
        return render_template('login.html')

@app.route('/dashboard')
def dashboard():
    return render_template('dashboard.html')

if __name__ == '__main__':
    app.run(debug=True)
