package com.example.springjte.controller

import com.example.springjte.model.User
import com.example.springjte.repository.UserRepository
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/api/users")
class UserController(private val repo: UserRepository) {

    @GetMapping fun getAll() = repo.findAll()

    @GetMapping("/{id}") fun getById(@PathVariable id: Long) = repo.findById(id)

    @PostMapping fun create(@RequestBody user: User) = repo.save(user)

    @PutMapping("/{id}") fun update(@PathVariable id: Long, @RequestBody user: User) =
        repo.update(user.copy(id = id))

    @DeleteMapping("/{id}") fun delete(@PathVariable id: Long) = repo.deleteById(id)

}