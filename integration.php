<?php
// authentication_module.php

// Function to check if a user is logged in
function isUserLoggedIn() {
    // Simulating a basic authentication check
    return isset($_SESSION['user_id']);
}
?>
<?php
// leave_history_module.php
include('authentication_module.php');

// Function to get leave history (simplified for illustration)
function getLeaveHistory() {
    // Check if the user is logged in before retrieving leave history
    if (isUserLoggedIn()) {
        // Query database and return leave history data
        return "Leave history data for the logged-in user.";
    } else {
        // Return an error message if the user is not logged in
        return "Error: User not logged in.";
    }
}

// Example usage
echo getLeaveHistory();
?>
