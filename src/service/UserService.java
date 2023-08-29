package service;

import doa.UserDAO;
import model.User;

public class UserService {
    private UserDAO userDAO;

    public UserService() {
        userDAO = new UserDAO();
    }

      

    // Login a user
    public boolean loginUser(String username, String password) {
        User user = userDAO.getUserByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            return true; // Successful login
        }
        System.out.println(user);
        System.out.println("null user");
        return false; // Invalid credentials
    }
    
    // Register a new user
    public boolean registerUser(String username, String password, String email) {
        // Validate inputs here if needed

        User existingUser = userDAO.getUserByUsername(username);
        if (existingUser != null) {
            return false; // Username already exists
        }

        User newUser = new User();
        newUser.setUsername(username);
        newUser.setPassword(password); // Remember to hash the password before storing
        newUser.setEmail(email);

        return userDAO.createUser(newUser);
    }
    // Other methods for user actions can be added similarly
}
