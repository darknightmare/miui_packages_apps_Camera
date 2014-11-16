.class public interface abstract Lcom/android/camera/module/Module;
.super Ljava/lang/Object;
.source "Module.java"


# virtual methods
.method public abstract animateSwitchCameraAfter()V
.end method

.method public abstract canIgnoreFocusChanged()Z
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract getDefaultPreferenceId(I)I
.end method

.method public abstract getParameter()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract getSupportedSettingKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleControllerEvent(Ljava/lang/String;)V
.end method

.method public abstract isSupportManualExposure()Z
.end method

.method public abstract isVideoRecording()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCreate(Lcom/android/camera/Camera;Landroid/view/View;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDown(FF)V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onLongPress(II)V
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onPauseAfterSuper()V
.end method

.method public abstract onPauseBeforeSuper()V
.end method

.method public abstract onPreviewTextureCopied()V
.end method

.method public abstract onResumeAfterSuper()V
.end method

.method public abstract onResumeBeforeSuper()V
.end method

.method public abstract onScale(FFF)Z
.end method

.method public abstract onScaleBegin(FF)Z
.end method

.method public abstract onScaleEnd()V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onSingleTapUp(II)Z
.end method

.method public abstract onSlideTrack(Landroid/graphics/RectF;Z)Z
.end method

.method public abstract onStop()V
.end method

.method public abstract onUserInteraction()V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract recreateCameraScreenNail()Z
.end method

.method public abstract requestRender()V
.end method

.method public abstract updateExitLayoutPanel(I)V
.end method

.method public abstract updateThumbnailView(Lcom/android/camera/Thumbnail;)V
.end method
