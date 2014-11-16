.class public Lcom/android/camera/AudioCaptureManager;
.super Ljava/lang/Object;
.source "AudioCaptureManager.java"

# interfaces
.implements Lcom/android/camera/AudioCapture$Callback;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final DELAY_NUMBERS:[I


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioCapture:Lcom/android/camera/AudioCapture;

.field private mCameraModule:Lcom/android/camera/module/CameraModule;

.field private mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/AudioCaptureManager;->DELAY_NUMBERS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x5bt 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V
    .locals 2
    .parameter "module"
    .parameter "activity"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    .line 28
    iput-object p2, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    .line 29
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CameraModule == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    .line 33
    new-instance v0, Lcom/android/camera/AudioCapture;

    invoke-direct {v0, p0}, Lcom/android/camera/AudioCapture;-><init>(Lcom/android/camera/AudioCapture$Callback;)V

    iput-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    .line 34
    return-void
.end method

.method private getRightMarginAccordingDevice()I
    .locals 2

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 85
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3:Z

    if-eqz v0, :cond_1

    .line 86
    const/high16 v0, 0x42b0

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    goto :goto_0

    .line 87
    :cond_1
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v0, :cond_3

    .line 88
    :cond_2
    const/high16 v0, 0x4350

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    goto :goto_0

    .line 91
    :cond_3
    const/high16 v0, 0x4393

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getShutterButton()Lcom/android/camera/ShutterButton;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    return-object v0
.end method

.method public hideDelayNumber()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public isAudioCaptureRunning()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v1}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v1}, Lcom/android/camera/AudioCapture;->pause()V

    .line 50
    iget-object v1, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getSettingsStatusBar()Lcom/android/camera/ui/CameraSettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateAudioOnScreenIndicator(Z)V

    .line 51
    const/4 v0, 0x1

    .line 53
    :cond_0
    return v0
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->pause()V

    .line 152
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getSettingsStatusBar()Lcom/android/camera/ui/CameraSettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateAudioOnScreenIndicator(Z)V

    .line 164
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->start()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 161
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/AudioCaptureManager;->updateCaptureDelayView(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getSettingsStatusBar()Lcom/android/camera/ui/CameraSettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateAudioOnScreenIndicator(Z)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0d017e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->resetAudioCapture()V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "pref_audio_capture"

    iget-object v1, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getCurrentSimpleLayoutMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->start()Z

    .line 41
    :cond_0
    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->readyToAudioCapture()Z

    move-result v0

    return v0
.end method

.method public releaseShutter()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    const/16 v1, 0x2bc

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->sendDelayedCaptureMessage(II)V

    .line 110
    :cond_0
    return-void
.end method

.method public resetAudioCapture()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->pause()V

    .line 144
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getSettingsStatusBar()Lcom/android/camera/ui/CameraSettingsStatusBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateAudioOnScreenIndicator(Z)V

    .line 147
    return-void
.end method

.method public setAudioCaptureICPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getSettingView()Lcom/android/camera/ui/SettingView;

    move-result-object v1

    const-string v2, "pref_audio_capture"

    if-eqz p1, :cond_0

    const v0, 0x7f02005f

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/SettingView;->setIndicatorImage(Ljava/lang/String;I)V

    .line 125
    return-void

    .line 121
    :cond_0
    const v0, 0x7f020011

    goto :goto_0
.end method

.method public setDelayStep(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 57
    if-ltz p1, :cond_1

    sget-object v0, Lcom/android/camera/AudioCaptureManager;->DELAY_NUMBERS:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    sget-object v1, Lcom/android/camera/AudioCaptureManager;->DELAY_NUMBERS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 63
    :cond_1
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 139
    :cond_0
    return-void
.end method

.method public updateCaptureDelayView(Z)V
    .locals 8
    .parameter "isAudioCapture"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 66
    iget-object v2, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 67
    .local v0, p1:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 68
    .local v1, rules:[I
    if-eqz p1, :cond_0

    .line 69
    aput v3, v1, v7

    .line 70
    aput v4, v1, v6

    .line 71
    aput v4, v1, v5

    .line 72
    iget-object v2, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateImageView;->requestLayout()V

    .line 80
    return-void

    .line 74
    :cond_0
    aput v4, v1, v7

    .line 75
    aput v3, v1, v6

    .line 76
    aput v3, v1, v5

    .line 77
    invoke-direct {p0}, Lcom/android/camera/AudioCaptureManager;->getRightMarginAccordingDevice()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method
