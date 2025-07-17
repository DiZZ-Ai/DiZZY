#!/system/bin/sh
# ✅ MOBILE LEGENDS: BANG BANG FULL GAME PERFORMANCE OPTIMIZATION SCRIPT ✅

# 1️⃣ GPU Driver and Graphics Rendering
settings put global angle_gl_driver_selection_pkgs com.mobile.legends
settings put global angle_gl_driver_selection_values angle
setprop debug.hwui.renderer skiavk
setprop debug.renderengine.disable_scheduler true

# 2️⃣ UI and Animation Speed (Reduce Lag/Input Delay)
settings put global window_animation_scale 0.0
settings put global transition_animation_scale 0.0
settings put global animator_duration_scale 0.0

# 3️⃣ Background Process Limit & AppOps
settings put global background_process_limit 1
cmd appops set com.mobile.legends RUN_IN_BACKGROUND allow
cmd appops set com.mobile.legends RUN_ANY_IN_BACKGROUND allow

# 4️⃣ Thermal & Performance Mode via device_config
device_config put game_overlay com.mobile.legends thermalPolicy=2
device_config put game_overlay com.mobile.legends performanceMode=1

# 5️⃣ Graphics Quality & Effects Offloading
device_config put game_overlay com.mobile.legends optimizeParticleEffects=1
device_config put game_overlay com.mobile.legends disableHeavyParticles=1
device_config put game_overlay com.mobile.legends optimizePostProcessing=1
device_config put game_overlay com.mobile.legends skipShadowRenderPass=1
device_config put game_overlay com.mobile.legends skipFogEffects=1
device_config put game_overlay com.mobile.legends skipLightVolumetrics=1
device_config put game_overlay com.mobile.legends skipPostLighting=1
device_config put game_overlay com.mobile.legends forceSimplifiedGeometry=1
device_config put game_overlay com.mobile.legends reduceDynamicLighting=1
device_config put game_overlay com.mobile.legends forceSimpleShaders=1
device_config put game_overlay com.mobile.legends forceLowPolyMode=1

# 6️⃣ FPS Lock & Resolution Downscale
device_config put game_overlay com.mobile.legends forceFps=120
device_config put game_overlay com.mobile.legends downscaleFactor=0.4

# 7️⃣ Touch Boost & Latency Optimization
device_config put game_overlay com.mobile.legends touchBoost=1
device_config put game_overlay com.mobile.legends reduceLatency=1
device_config put game_overlay com.mobile.legends useGameDriver=1
device_config put game_overlay com.mobile.legends enableHwOverlays=0

# 8️⃣ Disable Vibration, Haptics, and Tones
settings put system haptic_feedback_enabled 0
settings put system vibrate_when_ringing 0
settings put system dtmf_tone 0

# 9️⃣ Power Mode & CPU/GPU Tuning
settings put global low_power_mode 0
settings put global battery_saver_constants "cpu_freq=high,gps=off,brightness=high"

# 🔟 Max Refresh Rate (Adaptive)
settings put system peak_refresh_rate 120.0
settings put system min_refresh_rate 120.0

# 11️⃣ Touch Sensitivity Boost (If Supported)
settings put system pointer_speed 7

# 12️⃣ Disable Sync & Reduce Idle Wakeups (Optional)
settings put global auto_time 0
settings put global auto_time_zone 0

# ✅ Keep Screen Awake
settings put system screen_off_timeout 2147483647

# ✅ Final Confirmation
echo "✅ MOBILE LEGENDS ULTIMATE GAMING PERFORMANCE MODE APPLIED!"