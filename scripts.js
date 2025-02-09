document.querySelector('.toggle-password').addEventListener('click', function() {
    let passwordField = document.getElementById('password');
    if (passwordField.type === 'password') {
        passwordField.type = 'text';
        this.classList.remove('fa-eye-slash');
        this.classList.add('fa-eye');
    } else {
        passwordField.type = 'password';
        this.classList.remove('fa-eye');
        this.classList.add('fa-eye-slash');
    }
});
