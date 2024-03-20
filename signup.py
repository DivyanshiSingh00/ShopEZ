from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        # Retrieve form data
        name=name.form['name']
        username = request.form['username']
        phone=request.form['phone']
        email = request.form['email']
        password = request.form['password']


        # Perform signup logic (e.g., store user in database)
        # For simplicity, we'll just print the data
        print(f'Signup successful! Username: {username}, Email: {email}')
        # Redirect to login page after successful signup
        return redirect(url_for('login'))
    else:
        return render_template('signup.html')

if __name__ == '__main__':
    app.run(debug=True)
