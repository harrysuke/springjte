@param String contextPath
@param com.example.springjte.model.User user
<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    @template.fragments.navbar(contextPath)
    <div class="d-flex">
        @template.fragments.sidebar(contextPath)
        <main class="flex-grow-1 p-4">
            <h1>Edit User</h1>
            <form method="post" action="${contextPath}/users/${user.getId()}/update">
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" id="name" name="name" class="form-control" value="${user.getName()}" required />
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" id="email" name="email" class="form-control" value="${user.getEmail()}" required />
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password (leave blank to keep current)</label>
                    <input type="password" id="password" name="password" class="form-control" />
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
                <a class="btn btn-outline-secondary" href="${contextPath}/users">Cancel</a>
            </form>
        </main>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>