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
        <h1>Home</h1>
        

       </main> 
    </div>
    <script>window.CONTEXT_PATH = "${contextPath}";</script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    
</body>
</html>