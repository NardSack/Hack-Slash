// Player Object Step Event
/*
// Define dash variables
dashCooldown = 60;          // Cooldown duration between dashes
dashDuration = 10;          // Duration of the dash in frames
dashSpeed = 8;              // Speed multiplier for the dash
dashRemaining = 0;          // Remaining frames for the dash
dashCooldownRemaining = 0;  // Remaining frames for the dash cooldown

// Define iFrames variables
iFramesStart = 3;           // Starting frame of invincible frames
iFramesEnd = 5;             // Ending frame of invincible frames
iFramesRemaining = 0;       // Remaining frames for invincible frames

// Detect dash input
if (keyboard_check_pressed(vk_space) && dashCooldownRemaining <= 0) {
    // Start the dash
    dashRemaining = dashDuration;
    dashCooldownRemaining = dashCooldown;
    speed = dashSpeed * sign(xscale);  // Adjust player's speed during the dash
    iFramesRemaining = iFramesEnd - iFramesStart + 1;  // Activate iFrames on dash start
}

// Perform dash movement
if (dashRemaining > 0) {
    // Decrease remaining dash frames
    dashRemaining--;

    // Move the player at the dash speed
    x += hspeed * dashSpeed;
    y += vspeed * dashSpeed;
} else {
    // Enable collisions after the dash is complete
    phy_position_xprevious = x;  // Enable horizontal collision detection
    phy_position_yprevious = y;  // Enable vertical collision detection
}

// Perform iFrames management
if (iFramesRemaining > 0) {
    // Decrease remaining iFrames frames
    iFramesRemaining--;

    // Check if the player is within the iFrames range
    if (iFramesRemaining >= iFramesEnd - iFramesRemaining && iFramesRemaining <= iFramesEnd - iFramesStart) {
        // Disable collisions during the iFrames duration on specific frames
        phy_position_xprevious = x;  // Disable horizontal collision detection
        phy_position_yprevious = y;  // Disable vertical collision detection
    }
}

// Update dash cooldown
if (dashCooldownRemaining > 0) {
    // Decrease remaining dash cooldown frames
    dashCooldownRemaining--;
}
*/











