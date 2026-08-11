package com.example.springjte.repository

import com.example.springjte.model.User
import org.springframework.jdbc.core.JdbcTemplate
import org.springframework.jdbc.core.RowMapper
import org.springframework.stereotype.Repository

@Repository
class UserRepository (private val jdbcTemplate: JdbcTemplate){

    private val rowMapper = RowMapper<User> { rs, _ ->
        User(
            id = rs.getLong("id"),
            name = rs.getString("name"),
            email = rs.getString("email"),
            password = rs.getString("password")
        )
    }

    fun findAll(): List<User> = jdbcTemplate.query("SELECT * FROM users", rowMapper)

    fun findById(id: Long): User? = jdbcTemplate.query("SELECT * FROM users WHERE id = ?", rowMapper, id).firstOrNull()

    fun save(user: User): Int =
        jdbcTemplate.update("INSERT INTO users (name, email, password) VALUES (?, ?, ?)", user.name, user.email, user.password)

    fun update(user: User): Int =
        jdbcTemplate.update("UPDATE users SET name = ?, email = ?, password = ? WHERE id = ?", user.name, user.email, user.password, user.id)

    fun deleteById(id: Long): Int = jdbcTemplate.update("DELETE FROM users WHERE id = ?", id)

}