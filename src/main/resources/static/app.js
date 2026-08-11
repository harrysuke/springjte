const CONTEXT_PATH = window.CONTEXT_PATH || "";
const userList = document.getElementById("userList");
const form = document.getElementById("userForm");

async function loadUsers() {
  const res = await fetch(`${CONTEXT_PATH}/api/users`);
  const users = await res.json();
  userList.innerHTML = "";
  users.forEach((u) => {
    const li = document.createElement("li");
    li.textContent = `${u.name} (${u.email}) `;
    userList.appendChild(li);
  });
}

form.addEventListener("submit", async (e) => {
  e.preventDefault();
  const name = document.getElementById("name").value;
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;
  await fetch(`${CONTEXT_PATH}/api/users`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ name, email, password }),
  });
  loadUsers();
  form.reset();
});

async function deleteUser(id) {
  await fetch(`${CONTEXT_PATH}/api/users/${id}`, {
    method: "DELETE",
  });
  loadUsers();
}

loadUsers();
