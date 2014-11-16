.class Lcom/android/camera/module/VideoModule$9;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    .line 2445
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoPauseResumeListner.onClick() mMediaRecoderRecordingPaused="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mMediaRecoderRecordingPaused:Z
    invoke-static {v5}, Lcom/android/camera/module/VideoModule;->access$3500(Lcom/android/camera/module/VideoModule;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mRecorderBusy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v5, v5, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mMediaRecorderRecording = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v5}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2450
    .local v1, now:J
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v3, v3, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mPauseClickTime:J
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$3600(Lcom/android/camera/module/VideoModule;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 2471
    :cond_0
    :goto_0
    return-void

    .line 2453
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #setter for: Lcom/android/camera/module/VideoModule;->mPauseClickTime:J
    invoke-static {v3, v1, v2}, Lcom/android/camera/module/VideoModule;->access$3602(Lcom/android/camera/module/VideoModule;J)J

    .line 2454
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 2455
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mMediaRecoderRecordingPaused:Z
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$3500(Lcom/android/camera/module/VideoModule;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2456
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mPauseRecording:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$3700(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f02004a

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 2458
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$3800(Lcom/android/camera/module/VideoModule;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 2459
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J
    invoke-static {v6}, Lcom/android/camera/module/VideoModule;->access$4000(Lcom/android/camera/module/VideoModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    #setter for: Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J
    invoke-static {v3, v4, v5}, Lcom/android/camera/module/VideoModule;->access$3902(Lcom/android/camera/module/VideoModule;J)J

    .line 2460
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    const-wide/16 v4, 0x0

    #setter for: Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J
    invoke-static {v3, v4, v5}, Lcom/android/camera/module/VideoModule;->access$4002(Lcom/android/camera/module/VideoModule;J)J

    .line 2461
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/module/VideoModule;->mMediaRecoderRecordingPaused:Z
    invoke-static {v3, v4}, Lcom/android/camera/module/VideoModule;->access$3502(Lcom/android/camera/module/VideoModule;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2469
    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v8, v3, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 2470
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoPauseResumeListner.onClick() end. mRecorderBusy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v5, v5, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2462
    :catch_0
    move-exception v0

    .line 2463
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "videocamera"

    const-string v4, "Could not start media recorder. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2464
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$4100(Lcom/android/camera/module/VideoModule;)V

    goto :goto_1

    .line 2467
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$9;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->pauseVideoRecording()V
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$4200(Lcom/android/camera/module/VideoModule;)V

    goto :goto_1
.end method
