@param String contextPath
<!DOCTYPE html>
<html>
<head>
    <title>User CRUD</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    @template.fragments.navbar(contextPath)
    <div class="d-flex">
        @template.fragments.sidebar(contextPath)
        <main class="flex-grow-1 p-4">
        <h1>User Management</h1>
        <a class="btn btn-outline-primary mb-3" href="${contextPath}/users">Manage Users</a>
        <form id="userForm" class="mb-3">
            <div class="row g-2">
                <div class="col">
                    <input type="text" id="name" placeholder="Name" class="form-control" required />
                </div>
                <div class="col">
                    <input type="email" id="email" placeholder="Email" class="form-control" required />
                </div>
                <div class="col">
                    <input type="password" id="password" placeholder="Password" class="form-control" required />
                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-primary">Add User</button>
                </div>
            </div>
        </form>

       </main> 
    </div>
    <script>window.CONTEXT_PATH = "${contextPath}";</script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    <script src="${contextPath}/app.js"></script>
</body>
</html>