.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$MyOrientationEventListener;
    }
.end annotation


# instance fields
.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mCurrentModuleIndex:I

.field private mIsFromLauncher:Z

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 235
    return-void
.end method

.method private closeModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .parameter "module"

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 120
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 121
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 122
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onStop()V

    .line 123
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 125
    return-void
.end method

.method private getCameraByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 146
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/android/camera/camera_adapter/CameraM3W;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraM3W;-><init>()V

    .line 158
    :goto_0
    return-object v0

    .line 149
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM2A:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    new-instance v0, Lcom/android/camera/camera_adapter/CameraHMQC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraHMQC;-><init>()V

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    new-instance v0, Lcom/android/camera/camera_adapter/CameraHMMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraHMMTK;-><init>()V

    goto :goto_0

    .line 155
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isLeadcorePlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    new-instance v0, Lcom/android/camera/camera_adapter/CameraHMLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraHMLC;-><init>()V

    goto :goto_0

    .line 158
    :cond_4
    new-instance v0, Lcom/android/camera/module/CameraModule;

    invoke-direct {v0}, Lcom/android/camera/module/CameraModule;-><init>()V

    goto :goto_0
.end method

.method private getModuleByIndex(I)Lcom/android/camera/module/Module;
    .locals 2
    .parameter "moduleIndex"

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, module:Lcom/android/camera/module/Module;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 130
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 131
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ModuleManager;->setCurrentMode(I)V

    .line 132
    invoke-direct {p0}, Lcom/android/camera/Camera;->getPanoramaByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 133
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 134
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 135
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ModuleManager;->setCurrentMode(I)V

    .line 136
    invoke-direct {p0}, Lcom/android/camera/Camera;->getVideoByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 139
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ModuleManager;->setCurrentMode(I)V

    .line 140
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_0
.end method

.method private getPanoramaByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Lcom/android/camera/camera_adapter/PanoramaM3W;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/PanoramaM3W;-><init>()V

    .line 181
    :goto_0
    return-object v0

    .line 172
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM2A:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v0, :cond_2

    .line 173
    :cond_1
    new-instance v0, Lcom/android/camera/camera_adapter/PanoramaHMQC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/PanoramaHMQC;-><init>()V

    goto :goto_0

    .line 175
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    new-instance v0, Lcom/android/camera/camera_adapter/PanoramaHMMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/PanoramaHMMTK;-><init>()V

    goto :goto_0

    .line 178
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isLeadcorePlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    new-instance v0, Lcom/android/camera/camera_adapter/PanoramaHMLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/PanoramaHMLC;-><init>()V

    goto :goto_0

    .line 181
    :cond_4
    new-instance v0, Lcom/android/camera/module/PanoramaModule;

    invoke-direct {v0}, Lcom/android/camera/module/PanoramaModule;-><init>()V

    goto :goto_0
.end method

.method private getVideoByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/camera/camera_adapter/VideoHM;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoHM;-><init>()V

    .line 165
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/module/VideoModule;

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;-><init>()V

    goto :goto_0
.end method

.method private openModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .parameter "module"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 113
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-interface {p1, p0, v0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;Landroid/view/View;)V

    .line 114
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 115
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 116
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/module/Module;->onActivityResult(IILandroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    .line 201
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 38
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    .line 39
    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 45
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 46
    invoke-static {p0}, Lcom/android/camera/Util;->updateConfig(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0, v1}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;Landroid/view/View;)V

    .line 48
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 49
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 80
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->release()V

    .line 81
    return-void
.end method

.method protected onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onFullScreenChanged(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onFullScreenChanged(Z)V

    .line 188
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 70
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 71
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 72
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 74
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    .line 54
    invoke-static {}, Lcom/android/camera/storage/Storage;->readSystemPriorityStorage()V

    .line 55
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 57
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 59
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    .line 65
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 232
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onUserInteraction()V

    .line 233
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onWindowFocusChanged(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->canIgnoreFocusChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraBrightness;->onWindowFocusChanged(Z)V

    .line 222
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    .line 95
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    .line 88
    :cond_0
    return-void
.end method

.method public switchToOtherModule(I)V
    .locals 1
    .parameter "moduleIndex"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 100
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->keep()V

    .line 101
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->closeModule(Lcom/android/camera/module/Module;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->openModule(Lcom/android/camera/module/Module;)V

    goto :goto_0
.end method
