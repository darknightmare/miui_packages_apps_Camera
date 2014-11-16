.class final Lcom/android/camera/module/CameraModule$ShutterCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$ShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->access$3002(Lcom/android/camera/module/CameraModule;J)J

    .line 725
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$3000(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v3, v3, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    .line 726
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v2, v2, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->animateCapture()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3100(Lcom/android/camera/module/CameraModule;)V

    .line 730
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    sget v1, Lcom/android/camera/MiuiCameraSound;->SHUTTER_CLICK:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 735
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/module/CameraModule;->updateMutexModeUI(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->access$3300(Lcom/android/camera/module/CameraModule;Z)V

    .line 736
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->animateHold()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3200(Lcom/android/camera/module/CameraModule;)V

    goto :goto_0
.end method
