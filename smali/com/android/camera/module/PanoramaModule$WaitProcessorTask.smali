.class Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;
.super Landroid/os/AsyncTask;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitProcessorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1370
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1370
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    #getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$500(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v1

    monitor-enter v1

    .line 1374
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    #getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$500(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    #getter for: Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$500(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1377
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1381
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 1382
    const/4 v0, 0x0

    return-object v0

    .line 1381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1370
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/camera/module/PanoramaModule;->access$3402(Lcom/android/camera/module/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1388
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    #getter for: Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$1300(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1389
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1390
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    #calls: Lcom/android/camera/module/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$3500(Lcom/android/camera/module/PanoramaModule;)V

    .line 1391
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    #calls: Lcom/android/camera/module/PanoramaModule;->configMosaicPreview()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$3600(Lcom/android/camera/module/PanoramaModule;)V

    .line 1392
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/camera/module/PanoramaModule;

    #calls: Lcom/android/camera/module/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$800(Lcom/android/camera/module/PanoramaModule;)V

    .line 1393
    return-void
.end method
