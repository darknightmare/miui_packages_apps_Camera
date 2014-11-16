.class Lcom/android/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    .line 125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 131
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    sparse-switch v3, :sswitch_data_0

    .line 292
    :goto_0
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 293
    :goto_1
    return-void

    .line 136
    :sswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->release()V

    .line 137
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3, v4}, Lcom/android/camera/CameraManager;->access$002(Lcom/android/camera/CameraManager;Lcom/android/camera/hardware/CameraHardware;)Lcom/android/camera/hardware/CameraHardware;

    .line 138
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v3, v4}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/util/ConcurrentModificationException;
    const-string v3, "CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConcurrentModificationException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/util/ConcurrentModificationException;
    :sswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v3, v4}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    :try_start_3
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->reconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 145
    :catch_1
    move-exception v1

    .line 146
    .local v1, ex:Ljava/io/IOException;
    :try_start_4
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v3, v1}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 280
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/RuntimeException;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 283
    :try_start_5
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 287
    :goto_2
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3, v8}, Lcom/android/camera/CameraManager;->access$002(Lcom/android/camera/CameraManager;Lcom/android/camera/hardware/CameraHardware;)Lcom/android/camera/hardware/CameraHardware;

    .line 288
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v3, v8}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 290
    :cond_0
    throw v0

    .line 151
    .end local v0           #e:Ljava/lang/RuntimeException;
    :sswitch_3
    :try_start_6
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->unlock()V

    goto :goto_0

    .line 155
    :sswitch_4
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->lock()V
    :try_end_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 160
    :sswitch_5
    :try_start_7
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 161
    :catch_3
    move-exception v0

    .line 162
    .local v0, e:Ljava/io/IOException;
    :try_start_8
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 167
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_6
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->startPreview()V

    goto/16 :goto_1

    .line 171
    :sswitch_7
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->stopPreview()V

    goto/16 :goto_0

    .line 175
    :sswitch_8
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 180
    :sswitch_9
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 184
    :sswitch_a
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 188
    :sswitch_b
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 192
    :sswitch_c
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_0

    .line 197
    :sswitch_d
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardware;->setDisplayOrientation(I)V

    goto/16 :goto_0

    .line 201
    :sswitch_e
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    .line 206
    :sswitch_f
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_0

    .line 211
    :sswitch_10
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->startFaceDetection()V

    goto/16 :goto_0

    .line 215
    :sswitch_11
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->stopFaceDetection()V

    goto/16 :goto_0

    .line 219
    :sswitch_12
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->startPreview()V

    goto/16 :goto_0

    .line 223
    :sswitch_13
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_0

    .line 227
    :sswitch_14
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 230
    :sswitch_15
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/hardware/CameraHardware;->getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    move-result-object v4

    #setter for: Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3, v4}, Lcom/android/camera/CameraManager;->access$302(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto/16 :goto_0

    .line 233
    :sswitch_16
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 236
    :sswitch_17
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->addRawImageCallbackBuffer([B)V

    goto/16 :goto_0

    .line 239
    :sswitch_18
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/hardware/CameraHardware;->isNeedFlashOn()Z

    move-result v4

    #setter for: Lcom/android/camera/CameraManager;->mFlashOn:Z
    invoke-static {v3, v4}, Lcom/android/camera/CameraManager;->access$402(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 242
    :sswitch_19
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/hardware/CameraHardware;->isFocusSuccessful()Z

    move-result v4

    #setter for: Lcom/android/camera/CameraManager;->mFocusSuccessful:Z
    invoke-static {v3, v4}, Lcom/android/camera/CameraManager;->access$502(Lcom/android/camera/CameraManager;Z)Z

    .line 244
    :sswitch_1a
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/hardware/CameraHardware;->getCurrentFocusPosition()I

    move-result v4

    #setter for: Lcom/android/camera/CameraManager;->mFocusPostion:I
    invoke-static {v3, v4}, Lcom/android/camera/CameraManager;->access$602(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_0

    .line 250
    :sswitch_1b
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->cancelContinuousMode()V

    goto/16 :goto_0

    .line 253
    :sswitch_1c
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/hardware/CameraHardware;->getWBCurrentCCT()I

    move-result v4

    #setter for: Lcom/android/camera/CameraManager;->mWBCT:I
    invoke-static {v3, v4}, Lcom/android/camera/CameraManager;->access$702(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_0

    .line 256
    :sswitch_1d
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v4}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/hardware/CameraHardware;->getSnapsNum()I

    move-result v4

    #setter for: Lcom/android/camera/CameraManager;->mSnapNum:I
    invoke-static {v3, v4}, Lcom/android/camera/CameraManager;->access$802(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_0

    .line 259
    :sswitch_1e
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setLongshotMode(Z)V

    goto/16 :goto_0

    .line 262
    :sswitch_1f
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_1

    .line 265
    :sswitch_20
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    .line 266
    .local v2, rect:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    iget v4, v2, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/hardware/CameraHardware;->startObjectTrack(IIII)V

    goto/16 :goto_0

    .line 269
    .end local v2           #rect:Landroid/graphics/RectF;
    :sswitch_21
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/CameraHardware;->stopObjectTrack()V

    goto/16 :goto_0

    .line 272
    :sswitch_22
    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

    invoke-virtual {v4, v3}, Lcom/android/camera/hardware/CameraHardware;->setMetadataCb(Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;)V
    :try_end_8
    .catch Ljava/util/ConcurrentModificationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 284
    .local v0, e:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v1

    .line 285
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "CameraManager"

    const-string v4, "Fail to release the camera."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_1f
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_12
        0x64 -> :sswitch_18
        0x65 -> :sswitch_1a
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1b
        0x69 -> :sswitch_1e
        0x6a -> :sswitch_1d
        0x6b -> :sswitch_20
        0x6c -> :sswitch_21
        0x6d -> :sswitch_22
        0x6e -> :sswitch_19
    .end sparse-switch
.end method
