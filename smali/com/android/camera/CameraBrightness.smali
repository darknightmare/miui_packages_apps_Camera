.class public Lcom/android/camera/CameraBrightness;
.super Ljava/lang/Object;
.source "CameraBrightness.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private mBrightness:I

.field private mCurrentActivity:Landroid/app/Activity;

.field private mFocused:Z

.field private mLight:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mUseDefaultValue:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    .line 28
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/CameraBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    .line 29
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraBrightness;->mLightSensor:Landroid/hardware/Sensor;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFocused:Z

    .line 32
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/camera/CameraBrightness;->mLight:F

    .line 33
    return-void
.end method

.method private adjustBrightness()V
    .locals 7

    .prologue
    const/high16 v6, 0x437f

    .line 36
    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 37
    iget-boolean v3, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    if-nez v3, :cond_0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 42
    .local v0, brightnessMode:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 43
    const/high16 v3, 0x3f80

    iget-object v4, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_auto_brightness_adj"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v6

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0           #brightnessMode:I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/camera/BasePreferenceActivity;

    if-eqz v3, :cond_3

    .line 57
    const/16 v3, 0x14

    iput v3, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    .line 61
    :goto_1
    iget v3, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 66
    .local v2, localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    iget-boolean v3, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    if-eqz v3, :cond_4

    const/high16 v3, -0x4080

    :goto_2
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 69
    iget-object v3, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 71
    .end local v2           #localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void

    .line 46
    .restart local v0       #brightnessMode:I
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50
    .end local v0           #brightnessMode:I
    :catch_0
    move-exception v1

    .line 51
    .local v1, localException:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 54
    const/16 v3, 0x7f

    iput v3, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    goto :goto_0

    .line 59
    .end local v1           #localException:Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    iget v3, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    add-int/lit8 v3, v3, 0x2d

    iput v3, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    goto :goto_1

    .line 66
    .restart local v2       #localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget v3, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    goto :goto_2
.end method


# virtual methods
.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 116
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/camera/BasePreferenceActivity;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/camera/BasePreferenceActivity;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/CameraBrightness;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 94
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    .line 95
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 105
    iget v1, p0, Lcom/android/camera/CameraBrightness;->mLight:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mFocused:Z

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v0

    iput v1, p0, Lcom/android/camera/CameraBrightness;->mLight:F

    .line 107
    const/high16 v1, 0x4248

    iget v2, p0, Lcom/android/camera/CameraBrightness;->mLight:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 108
    .local v0, shouldDefault:Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    if-eq v1, v0, :cond_1

    .line 109
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 110
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    .line 113
    .end local v0           #shouldDefault:Z
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/camera/CameraBrightness;->mFocused:Z

    .line 76
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/camera/BasePreferenceActivity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 78
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFocused:Z

    if-eqz v0, :cond_3

    const/high16 v0, -0x4080

    :goto_1
    iput v0, p0, Lcom/android/camera/CameraBrightness;->mLight:F

    .line 79
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    .line 81
    :cond_1
    return-void

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_3
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mLight:F

    goto :goto_1
.end method
