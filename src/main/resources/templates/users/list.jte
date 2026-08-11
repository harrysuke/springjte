@param String contextPath
@param java.util.List<com.example.springjte.model.User> users
<!DOCTYPE html>
<html>
<head>
    <title>Users</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    @template.fragments.navbar(contextPath)
    <div class="d-flex">
        @template.fragments.sidebar(contextPath)
        <main class="flex-grow-1 p-4">
            <h1>Users</h1>
            <a class="btn btn-outline-primary mb-3" href="${contextPath}/">Home</a>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                @for (var user : users)
                <tr>
                    <td>${user.getId()}</td>
                    <td>${user.getName()}</td>
                    <td>${user.getEmail()}</td>
                    <td>
                        <a class="btn btn-sm btn-primary" href="${contextPath}/users/${user.getId()}/edit">Edit</a>
                        <form class="d-inline" method="post" action="${contextPath}/users/${user.getId()}/delete" onsubmit="return confirm('Delete ${user.getName()}?');">
                            <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
                @endfor
                </tbody>
            </table>
        </main>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>