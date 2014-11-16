.class Lcom/android/camera/module/VideoModule$4;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1832
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1834
    const-string v2, "videocamera"

    const-string v3, "mUIRestoreRunnable.run() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$2800(Lcom/android/camera/module/VideoModule;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1836
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1838
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V
    invoke-static {v2, v1}, Lcom/android/camera/module/VideoModule;->access$2900(Lcom/android/camera/module/VideoModule;Z)V

    .line 1839
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$2300(Lcom/android/camera/module/VideoModule;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1840
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v2, v0}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 1842
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$3000(Lcom/android/camera/module/VideoModule;)V

    .line 1844
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$2300(Lcom/android/camera/module/VideoModule;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1845
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    .line 1846
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mQuickCapture:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$3100(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1847
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mSavingResult:Z
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$1600(Lcom/android/camera/module/VideoModule;)Z

    move-result v2

    #calls: Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/module/VideoModule;->access$3200(Lcom/android/camera/module/VideoModule;Z)V

    .line 1859
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1860
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->animateSlide()V
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$3400(Lcom/android/camera/module/VideoModule;)V

    .line 1861
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->updateLoadUI(Z)V

    .line 1862
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v1, v0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1863
    return-void

    .line 1848
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mSavingResult:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1600(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1849
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->showAlert()V
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$3300(Lcom/android/camera/module/VideoModule;)V

    goto :goto_0

    .line 1852
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mSavingResult:Z
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$1600(Lcom/android/camera/module/VideoModule;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1854
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$2200(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/Thumbnail;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1855
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$2200(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/Thumbnail;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v4, v4, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v4, :cond_4

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 1856
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    #setter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v0, v5}, Lcom/android/camera/module/VideoModule;->access$2202(Lcom/android/camera/module/VideoModule;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1855
    goto :goto_1
.end method
