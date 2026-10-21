# Spring Boot (Kotlin) + JTE + Vanilla JS Fetch

A modern, lightweight full-stack web application starter using **Spring Boot**, **Kotlin**, **JTE (Java Template Engine)**, and frontend interactions powered by native **Vanilla JavaScript Fetch API**.

This stack eliminates heavy frontend build pipelines (like Webpack, Vite, or npm dependencies) by rendering fast, type-safe HTML templates on the server and handling dynamic page interactions using native browser APIs.

## 🚀 Features
* **Kotlin Backend:** Clean, idiomatic backend development using Spring Boot and Kotlin coroutines/idioms.
* **JTE Templates:** High-performance, compile-time checked server-side rendering with Java Template Engine.
* **Zero-Dependency Frontend:** Client-side updates, form submissions, and API interactions handle smoothly via Vanilla JS `fetch()`.
* **Gradle Wrapper:** Build and run cleanly out of the box without requiring local Gradle installations.

## 🛠️ Tech Stack
| **Layer** | **Technology** |
|---|---|
| **Backend Framework** | Spring Boot |
| **Language** | Kotlin |
| **Template Engine** | JTE (Java Template Engine) |
| **Build System** | Gradle (Kotlin DSL - `build.gradle.kts`) |
| **Frontend Utilities** | HTML5, Vanilla JavaScript (Fetch API) |

## 📁 Repository Structure
```text
├── .github/workflows/      # CI/CD Automation workflows
├── gradle/wrapper/         # Gradle Wrapper files
├── src/
│   ├── main/
│   │   ├── kotlin/         # Spring Boot Application code & controllers
│   │   └── resources/
│   │       ├── templates/  # JTE templates (.jte files)
│   │       └── application.properties / application.yml
├── build.gradle.kts        # Project dependencies and build scripts
└── settings.gradle.kts     # Gradle project configuration
```

## ⚙️ Getting Started

### Prerequisites
Ensure you have the following installed on your machine:
* **Java Development Kit (JDK):** Version 17 or higher (recommended)
* **IDE:** IntelliJ IDEA (highly recommended for Kotlin and JTE syntax support)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/harrysuke/springjte
   cd springjte
   ```
2. Build the project using the Gradle wrapper:
   ```bash
   ./gradlew build
   ```

### Running the Application
Start the Spring Boot server directly from your terminal:
```bash
./gradlew bootRun
```
Once started, open your web browser and navigate to `http://localhost:8080`.

## 💡 Development Patterns Used

### 1. Server-Side Rendering (JTE)
Templates are located in `src/main/resources/templates`. JTE compiles these templates directly into Java bytecode, making it incredibly fast.

Example Kotlin Controller integration:
```kotlin
@Controller
class HomeController {
    @GetMapping("/")
    fun index(model: Model): String {
        model.addAttribute("title", "Welcome to SpringJTE")
        return "index" // Renders index.jte
    }
}
```

### 2. Client-Side Interactions (Vanilla JS Fetch)
Instead of importing a massive JavaScript framework, asynchronous state updates use native browser features:
```javascript
// Example frontend fetch pattern inside the HTML scripts
fetch('/api/data', {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json'
    },
    body: JSON.stringify({ message: "Hello Server" })
})
.then(response => response.json())
.then(data => {
    console.log('Success:', data);
    // Dynamically update DOM here
})
.catch(error => console.error('Error:', error));
```
