package com.example.springjte.controller

import com.example.springjte.model.User
import com.example.springjte.repository.UserRepository
import jakarta.servlet.http.HttpServletRequest
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.*

@Controller
class PageController(private val repo: UserRepository) {

    @GetMapping("/")
    fun index(model: Model, req: HttpServletRequest): String {
        model.addAttribute("contextPath", req.contextPath)
        return "users/form"
    }

    @GetMapping("/users")
    fun list(model: Model, req: HttpServletRequest): String {
        model.addAttribute("contextPath", req.contextPath)
        model.addAttribute("users", repo.findAll())
        return "users/list"
    }

    @GetMapping("/users/{id}/edit")
    fun edit(@PathVariable id: Long, model: Model, req: HttpServletRequest): String {
        val user = repo.findById(id) ?: return "redirect:/users"
        model.addAttribute("contextPath", req.contextPath)
        model.addAttribute("user", user)
        return "users/edit"
    }

    @PostMapping("/users/{id}/update")
    fun update(
        @PathVariable id: Long,
        @RequestParam name: String,
        @RequestParam email: String,
        @RequestParam password: String
    ): String {
        val pw = if (password.isBlank()) repo.findById(id)?.password else password
        repo.update(User(id = id, name = name, email = email, password = pw ?: ""))
        return "redirect:/users/form"
    }

    @PostMapping("/users/{id}/delete")
    fun delete(@PathVariable id: Long): String {
        repo.deleteById(id)
        return "redirect:/users/form"
    }

}