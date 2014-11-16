.class public Lcom/android/camera/module/PanoramaModule;
.super Lcom/android/camera/module/BaseModule;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ModuleManager$OnModeChangeListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;,
        Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;,
        Lcom/android/camera/module/PanoramaModule$ProgressData;,
        Lcom/android/camera/module/PanoramaModule$MosaicJpeg;,
        Lcom/android/camera/module/PanoramaModule$SetupCameraThread;
    }
.end annotation


# instance fields
.field private mCameraOrientation:I

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureLayout:Landroid/view/View;

.field private mCaptureState:I

.field private mCurrentRatation:I

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mHorizontalViewAngle:F

.field private mLocation:Landroid/location/Location;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicHandler:Landroid/os/Handler;

.field private mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

.field private mMosaicThread:Landroid/os/HandlerThread;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPaused:Z

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewArea:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressArea:Landroid/view/View;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewCancleButton:Landroid/view/View;

.field private mReviewControlArea:Landroid/view/View;

.field private mReviewLayout:Landroid/view/View;

.field private mReviewRotate:Lcom/android/camera/ui/RotateLayout;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSaveMosaicThread:Ljava/lang/Thread;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSnapshotFocusMode:Ljava/lang/String;

.field private mStartMoveHintArea:Landroid/view/View;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
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
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    .line 160
    const-string v0, "continuous-picture"

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 161
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    .line 785
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRatation:I

    .line 1370
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->setupCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/module/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/module/PanoramaModule;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/module/PanoramaModule;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/PanoramaModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/module/PanoramaModule;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/PanoramaModule;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/module/PanoramaModule;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/PanoramaModule;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->switchToCameraMode()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/module/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/module/PanoramaModule;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/PanoProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/module/PanoramaModule;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/module/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mUsingFrontCamera:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/module/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/module/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/PanoramaModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/module/PanoramaModule;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/camera/module/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->configMosaicPreview()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/module/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/module/PanoramaModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 1064
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mCancelComputation:Z

    .line 1065
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1066
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1067
    monitor-exit v1

    .line 1068
    return-void

    .line 1067
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private configMosaicPreview()V
    .locals 5

    .prologue
    .line 512
    iget v2, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    .line 513
    .local v2, w:I
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    .line 514
    .local v0, h:I
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->stopCameraPreview()V

    .line 515
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 516
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-nez v3, :cond_2

    .line 517
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 518
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 524
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 526
    .local v1, isLandscape:Z
    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v3}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 527
    :cond_0
    new-instance v3, Lcom/android/camera/MosaicPreviewRenderer;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/android/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    iput-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 530
    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v3}, Lcom/android/camera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 531
    iget-boolean v3, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-nez v3, :cond_1

    .line 532
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->resetToPreview()V

    .line 534
    :cond_1
    return-void

    .line 520
    .end local v1           #isLandscape:Z
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 521
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 522
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    goto :goto_0

    .line 524
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 494
    return-void
.end method

.method private createContentView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 687
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040026

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 688
    iput v3, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    .line 689
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureLayout:Landroid/view/View;

    .line 690
    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoProgressBar;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 691
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    new-instance v1, Lcom/android/camera/module/PanoramaModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/PanoramaModule$5;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 713
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    .line 715
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoProgressBar;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 716
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 719
    const v0, 0x7f0c00a1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 720
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 721
    const v0, 0x7f0c00a0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    .line 722
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    new-instance v1, Lcom/android/camera/module/PanoramaModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/PanoramaModule$6;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 729
    const v0, 0x7f0c00a2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    .line 730
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 732
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewLayout:Landroid/view/View;

    .line 733
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewRotate:Lcom/android/camera/ui/RotateLayout;

    .line 734
    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReview:Landroid/widget/ImageView;

    .line 735
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewCancleButton:Landroid/view/View;

    .line 736
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewCancleButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/module/PanoramaModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/module/PanoramaModule$7;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewArea:Landroid/view/View;

    .line 744
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 746
    new-instance v0, Lcom/android/camera/ModuleManager;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/ModuleManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    .line 747
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/ModuleManager;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModuleManager;->setOnModeChangeListener(Lcom/android/camera/ModuleManager$OnModeChangeListener;)V

    .line 750
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 751
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 753
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    .line 754
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/module/PanoramaModule$8;

    invoke-direct {v1, p0}, Lcom/android/camera/module/PanoramaModule$8;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    const v1, 0x7f0d01de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 760
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 761
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 762
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitArea:Landroid/view/View;

    .line 763
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    .line 764
    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Landroid/view/View;

    .line 765
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewControlArea:Landroid/view/View;

    .line 767
    new-instance v0, Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f040031

    invoke-direct {v0, v1, v2}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 768
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/PanoramaModule;->setOrientationIndicator(I)V

    .line 769
    return-void
.end method

.method private getBestPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 9
    .parameter "parameters"

    .prologue
    .line 435
    invoke-static {}, Lcom/android/camera/Device;->isLowMemoryDevice()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v3, 0x356

    .line 436
    .local v3, maxWidth:I
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isLowMemoryDevice()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v2, 0x1e0

    .line 437
    .local v2, maxHeight:I
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 438
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v4, out:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_3

    .line 440
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 441
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    if-gt v6, v3, :cond_0

    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    if-gt v6, v2, :cond_0

    .line 442
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 435
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v2           #maxHeight:I
    .end local v3           #maxWidth:I
    .end local v4           #out:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v5           #size:Landroid/hardware/Camera$Size;
    :cond_1
    const/16 v3, 0x500

    goto :goto_0

    .line 436
    .restart local v3       #maxWidth:I
    :cond_2
    const/16 v2, 0x2d0

    goto :goto_1

    .line 446
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v2       #maxHeight:I
    .restart local v4       #out:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-wide v7, 0x3ffc71c71c71c71cL

    invoke-static {v6, v4, v7, v8}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v6

    return-object v6
.end method

.method private getRotables()[Lcom/android/camera/ui/Rotatable;
    .locals 3

    .prologue
    .line 793
    const/16 v0, 0xf

    new-array v1, v0, [Lcom/android/camera/ui/Rotatable;

    const/4 v2, 0x0

    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v1, v0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitArea:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v1, v2

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v1, v2

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewControlArea:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    aput-object v0, v1, v2

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    aput-object v2, v1, v0

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    aput-object v2, v1, v0

    const/16 v0, 0xb

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    aput-object v2, v1, v0

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v1, v0

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v1, v0

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    aput-object v2, v1, v0

    .line 810
    return-object v1
.end method

.method private hideTooFastIndication()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewArea:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 662
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->initialize(III)V

    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private initializeSettingScreen()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 388
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/android/camera/CameraLayoutModeManager;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1, p0, p0}, Lcom/android/camera/CameraLayoutModeManager;-><init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->isFrontCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/camera/LayoutModeManager;->initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Lcom/android/camera/ui/SettingView$SettingViewChangedListener;)Lcom/android/camera/ui/SettingView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 396
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    .line 397
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    const-string v1, "pref_camera_panoramamode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->setCurrentMode(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->updateExitView(Landroid/widget/TextView;)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 400
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 402
    return-void
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1367
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1368
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1360
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1361
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1362
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1363
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 3

    .prologue
    .line 918
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 919
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 921
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 922
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 923
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 924
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 925
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 927
    :cond_0
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    .line 1060
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1061
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 423
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 424
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 425
    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    .line 428
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1086
    iput v3, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    .line 1092
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1093
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 1100
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1356
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1357
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->reset()V

    .line 1104
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->startCameraPreview()V

    .line 1105
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1056
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1123
    if-eqz p1, :cond_1

    .line 1124
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/module/PanoramaModule;->mTimeTaken:J

    invoke-static {v0, v1, v2}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 1126
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->addSecureNum(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-wide v2, p0, Lcom/android/camera/module/PanoramaModule;->mTimeTaken:J

    iget-object v4, p0, Lcom/android/camera/module/PanoramaModule;->mLocation:Landroid/location/Location;

    const/4 v9, 0x0

    move v5, p4

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v9}, Lcom/android/camera/storage/Storage;->addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZ)Landroid/net/Uri;

    move-result-object v0

    .line 1129
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1130
    if-eqz v0, :cond_0

    .line 1131
    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1132
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mLocation:Landroid/location/Location;

    iget-wide v3, p0, Lcom/android/camera/module/PanoramaModule;->mTimeTaken:J

    invoke-static {v1, p4, v2, v3, v4}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V

    .line 1133
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/android/camera/storage/Storage;->updateImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)Z

    .line 1140
    :goto_0
    return-object v0

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->addSecureNum(I)V

    goto :goto_0

    .line 1140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOrientationIndicator(I)V
    .locals 10
    .parameter "degree"

    .prologue
    const/4 v9, 0x1

    .line 772
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->getRotables()[Lcom/android/camera/ui/Rotatable;

    move-result-object v4

    .line 773
    .local v4, rotables:[Lcom/android/camera/ui/Rotatable;
    const/4 v7, 0x4

    new-array v6, v7, [Landroid/view/View;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitArea:Landroid/view/View;

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Landroid/view/View;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/camera/module/PanoramaModule;->mReviewControlArea:Landroid/view/View;

    aput-object v8, v6, v7

    .line 774
    .local v6, views:[Landroid/view/View;
    move-object v0, v6

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 775
    .local v5, v:Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/android/camera/module/PanoramaModule;->getMarginValue(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/camera/module/PanoramaModule;->updateRotateLayout(ILandroid/view/View;I)V

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 777
    .end local v5           #v:Landroid/view/View;
    :cond_0
    move-object v0, v4

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 778
    .local v3, r:Lcom/android/camera/ui/Rotatable;
    if-eqz v3, :cond_1

    .line 779
    invoke-interface {v3, p1, v9}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 777
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 782
    .end local v3           #r:Lcom/android/camera/ui/Rotatable;
    :cond_2
    iput p1, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRatation:I

    .line 783
    return-void
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 410
    .local v0, cameraId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 412
    invoke-static {v0}, Lcom/android/camera/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraOrientation:I

    .line 413
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/PanoramaModule;->mUsingFrontCamera:Z

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 416
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1}, Lcom/android/camera/module/PanoramaModule;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 417
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1}, Lcom/android/camera/module/PanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 418
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 10
    .parameter "parameters"

    .prologue
    const/4 v9, 0x0

    .line 450
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule;->getBestPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 451
    .local v4, size:Landroid/hardware/Camera$Size;
    if-nez v4, :cond_0

    .line 452
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Can not find suitable preview size for panorama"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 454
    :cond_0
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    .line 455
    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    .line 457
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget v6, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 459
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v7, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    iget v8, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    invoke-static {v7, v8}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Landroid/app/Activity;I)V

    .line 462
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 463
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 464
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 465
    .local v3, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/4 v7, 0x1

    aget v2, v6, v7

    .line 466
    .local v2, maxFps:I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 467
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    .line 470
    .local v5, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 471
    iget-object v6, p0, Lcom/android/camera/module/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 477
    :goto_0
    invoke-virtual {p1, v9}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 478
    invoke-virtual {p1, v9}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 479
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v6}, Lcom/android/camera/module/PanoramaModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/camera/module/PanoramaModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    .line 481
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/module/PanoramaModule;->mHorizontalViewAngle:F

    .line 482
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/module/PanoramaModule;->mVerticalViewAngle:F

    .line 483
    return-void

    .line 474
    :cond_1
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/module/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/16 v4, 0x10e

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1108
    if-eqz p1, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1110
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRatation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRatation:I

    if-ne v0, v4, :cond_2

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewRotate:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1116
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1120
    return-void

    .line 1113
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewRotate:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private showTooFastIndication()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    return-void
.end method

.method private startCameraPreview()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1308
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1322
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->stopCameraPreview()V

    .line 1327
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1329
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1330
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1333
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1334
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1336
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1337
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    goto :goto_0
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1342
    const-string v0, "PanoramaActivity"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1345
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraState:I

    .line 1346
    return-void
.end method

.method private stopCapture(Z)V
    .locals 3
    .parameter "aborted"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    .line 619
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->hideTooFastIndication()V

    .line 620
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 621
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingButton;->setEnabled(Z)V

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 625
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->stopCameraPreview()V

    .line 627
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 629
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 631
    new-instance v0, Lcom/android/camera/module/PanoramaModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/PanoramaModule$4;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModuleManager;->setEnabled(Z)V

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraPickerButton;->setEnabled(Z)V

    .line 651
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->keepScreenOnAwhile()V

    .line 652
    return-void
.end method

.method private switchToCameraMode()V
    .locals 1

    .prologue
    .line 952
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/PanoramaModule;->switchToOtherMode(I)V

    .line 953
    return-void
.end method

.method private switchToOtherMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    goto :goto_0
.end method

.method private updateProgress(FFFF)V
    .locals 3
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x41c8

    .line 666
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 671
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 673
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->showTooFastIndication()V

    .line 677
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    float-to-int v0, p3

    .line 681
    .local v0, angleInMajorDirection:I
    :goto_1
    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRatation:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mCurrentRatation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    :cond_1
    neg-int v0, v0

    .line 683
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 684
    return-void

    .line 675
    .end local v0           #angleInMajorDirection:I
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->hideTooFastIndication()V

    goto :goto_0

    .line 677
    :cond_4
    float-to-int v0, p4

    goto :goto_1
.end method


# virtual methods
.method public generateFinalMosaic(Z)Lcom/android/camera/module/PanoramaModule$MosaicJpeg;
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1268
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v0

    .line 1269
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1304
    :goto_0
    return-object v5

    .line 1271
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1272
    new-instance v5, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    goto :goto_0

    .line 1275
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1276
    if-nez v1, :cond_2

    .line 1277
    const-string v0, "PanoramaActivity"

    const-string v1, "getFinalMosaicNV21() returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    new-instance v5, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    goto :goto_0

    .line 1281
    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 1282
    add-int/lit8 v2, v0, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 1284
    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 1286
    const-string v2, "PanoramaActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", W = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", H = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1290
    :cond_3
    const-string v1, "PanoramaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width|height <= 0!!, len = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", W = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", H = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    new-instance v5, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    goto/16 :goto_0

    .line 1295
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1296
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1297
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1299
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    new-instance v5, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v5, p0, v0, v3, v4}, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/module/PanoramaModule;[BII)V

    goto/16 :goto_0

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    const-string v1, "PanoramaActivity"

    const-string v2, "Exception in storing final mosaic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1302
    new-instance v5, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    goto/16 :goto_0
.end method

.method protected getCameraRotation()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    return v0
.end method

.method protected getMarginValue(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mReviewControlArea:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 486
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 487
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 489
    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/module/PanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    const-string v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-static {}, Lcom/android/camera/module/PanoramaModule;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-nez v1, :cond_0

    .line 367
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_1
    :goto_0
    return-object v0

    .line 374
    :cond_2
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-static {}, Lcom/android/camera/module/PanoramaModule;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-nez v1, :cond_3

    .line 377
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 381
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected initializeCameraPickerButton(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V
    .locals 3
    .parameter

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    if-nez v0, :cond_0

    .line 932
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraPickerButton;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    .line 934
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mNumberOfCameras:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 949
    :goto_0
    return-void

    .line 939
    :cond_1
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 940
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    const v2, 0x7f060004

    invoke-virtual {v0, v2}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/PreferenceGroup;

    new-instance v2, Lcom/android/camera/module/PanoramaModule$10;

    invoke-direct {v2, p0}, Lcom/android/camera/module/PanoramaModule$10;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/CameraPickerButton;->initializeForPanorama(Lcom/android/camera/preferences/PreferenceGroup;Landroid/view/View$OnClickListener;)V

    .line 947
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraPickerButton;->setListener(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 957
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    if-eqz v1, :cond_1

    .line 958
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->hideScreenSettingView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    :goto_0
    return v0

    .line 961
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->switchToCameraMode()V

    goto :goto_0

    .line 964
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->cancelHighResComputation()V

    goto :goto_0
.end method

.method public onCreate(Lcom/android/camera/Camera;Landroid/view/View;)V
    .locals 6
    .parameter "activity"
    .parameter "frame"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 233
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;Landroid/view/View;)V

    .line 234
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->loadCameraPreferences()V

    .line 235
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->createContentView()V

    .line 236
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 237
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v5, v4}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 239
    new-instance v2, Lcom/android/camera/module/PanoramaModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/PanoramaModule$1;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 261
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "panoramaAsynchronousMosaicing"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicThread:Landroid/os/HandlerThread;

    .line 262
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 263
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicHandler:Landroid/os/Handler;

    .line 264
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 265
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "Panorama"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 267
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 269
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 270
    .local v0, appRes:Landroid/content/res/Resources;
    const v2, 0x7f0d0105

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    .line 271
    const v2, 0x7f0d0108

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    .line 272
    const v2, 0x7f0d00e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    .line 273
    const v2, 0x7f0d0107

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 274
    const v2, 0x7f0d0106

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 277
    new-instance v2, Lcom/android/camera/module/PanoramaModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/module/PanoramaModule$2;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    iput-object v2, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 345
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSimpleLayoutMode(Landroid/content/SharedPreferences;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    .line 346
    const v2, 0x7f0c007f

    invoke-virtual {p0, v2}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mGpsIndicator:Landroid/widget/ImageView;

    .line 347
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->initSettingButton()V

    .line 348
    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-nez v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/SettingButton;->setEnabled(Z)V

    .line 351
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 356
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 357
    return-void
.end method

.method public onFlingOut(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1401
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 892
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 895
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    .line 897
    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    const-string p2, "mode_none"

    .line 902
    :cond_1
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    const-string v0, "pref_camera_coloreffect_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_shader_coloreffect_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    new-instance v1, Lcom/android/camera/module/PanoramaModule$9;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/module/PanoramaModule$9;-><init>(Lcom/android/camera/module/PanoramaModule;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->runAfterDismiss(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_mode_change_simple_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->switchToCameraMode()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 823
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 847
    :goto_0
    return v1

    .line 826
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 847
    :cond_1
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 828
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 829
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->onShutterButtonClick()V

    goto :goto_0

    .line 834
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->onShutterButtonClick()V

    goto :goto_0

    .line 841
    :pswitch_3
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/PanoramaModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 826
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 852
    iget-boolean v1, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 860
    :goto_0
    return v0

    .line 855
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 860
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 857
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "oldl"
    .parameter "oldt"
    .parameter "oldr"
    .parameter "oldb"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/Camera;->onLayoutChange(Landroid/view/View;IIII)V

    .line 543
    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    :cond_0
    return-void
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 503
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 504
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule;->switchToOtherMode(I)V

    .line 505
    const/4 v0, 0x1

    .line 507
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 218
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mDeviceOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/PanoramaModule;->mDeviceOrientation:I

    .line 222
    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mDeviceOrientation:I

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 224
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 225
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 226
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-direct {p0, v1}, Lcom/android/camera/module/PanoramaModule;->setOrientationIndicator(I)V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1217
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseAfterSuper()V

    .line 1218
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1257
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget v1, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    if-ne v1, v2, :cond_1

    .line 1224
    invoke-direct {p0, v2}, Lcom/android/camera/module/PanoramaModule;->stopCapture(Z)V

    .line 1225
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->reset()V

    .line 1228
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->releaseCamera()V

    .line 1229
    iput-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 1230
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSaveMosaicThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSaveMosaicThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1232
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSaveMosaicThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    .line 1238
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v1}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 1241
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v1, :cond_3

    .line 1242
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 1243
    iput-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 1246
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_4

    .line 1247
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1248
    iput-object v3, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1250
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->resetScreenOn()V

    .line 1252
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1253
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1255
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1256
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public onPauseBeforeSuper()V
    .locals 0

    .prologue
    .line 1212
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 1213
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1168
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 1169
    iput v3, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    .line 1171
    new-instance v0, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V

    .line 1172
    invoke-virtual {v0}, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;->start()V

    .line 1174
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->hasCameraException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->onOpenCameraException()V

    .line 1208
    :goto_1
    return-void

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 1185
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 1188
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1189
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 1192
    new-instance v0, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;-><init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/PanoramaModule$WaitProcessorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1200
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 1201
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1202
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/PanoramaModule;->initializeCameraControls(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;I)V

    .line 1203
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->keepScreenOnAwhile()V

    .line 1205
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1207
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->initializeSettingScreen()V

    goto :goto_1

    .line 1194
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1197
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    .line 1198
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->configMosaicPreview()V

    goto :goto_2

    .line 1175
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 1163
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 1164
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 871
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->hideScreenSettingView()Z

    .line 875
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 877
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->playCameraSound(I)V

    .line 878
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->startCapture()V

    goto :goto_0

    .line 881
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/PanoramaModule;->playCameraSound(I)V

    .line 882
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/PanoramaModule;->stopCapture(Z)V

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0
    .parameter "pressed"
    .parameter "fromWhat"

    .prologue
    .line 888
    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    .prologue
    .line 1398
    const/4 v0, 0x0

    return v0
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->hideScreenSettingView()Z

    .line 1079
    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1350
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 1351
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->keepScreenOnAwhile()V

    .line 1352
    :cond_0
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 0
    .parameter "repeatCount"
    .parameter "pressed"

    .prologue
    .line 815
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->onShutterButtonClick()V

    .line 818
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 969
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 970
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 971
    new-instance v0, Lcom/android/camera/module/PanoramaModule$11;

    invoke-direct {v0, p0}, Lcom/android/camera/module/PanoramaModule$11;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    .line 995
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 996
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 2

    .prologue
    .line 1048
    new-instance v0, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/PanoramaModule$SaveMosaicThread;-><init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSaveMosaicThread:Ljava/lang/Thread;

    .line 1049
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mSaveMosaicThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lcom/android/camera/module/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 1050
    invoke-virtual {p0}, Lcom/android/camera/module/PanoramaModule;->reportProgress()V

    .line 1051
    return-void
.end method

.method public startCapture()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 569
    iput-boolean v2, p0, Lcom/android/camera/module/PanoramaModule;->mCancelComputation:Z

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/PanoramaModule;->mTimeTaken:J

    .line 571
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v0, v2}, Lcom/android/camera/MosaicPreviewRenderer;->setFramesUpdated(Z)V

    .line 573
    iput v3, p0, Lcom/android/camera/module/PanoramaModule;->mCaptureState:I

    .line 574
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 575
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingButton;->setEnabled(Z)V

    .line 578
    :cond_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mLocation:Landroid/location/Location;

    .line 579
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 585
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    new-instance v1, Lcom/android/camera/module/PanoramaModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/module/PanoramaModule$3;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 602
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModuleManager;->setEnabled(Z)V

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraPickerButton;->setEnabled(Z)V

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 608
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mProgressArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 612
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 613
    iget v0, p0, Lcom/android/camera/module/PanoramaModule;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/camera/module/PanoramaModule;->mDeviceOrientationAtCapture:I

    .line 614
    invoke-direct {p0}, Lcom/android/camera/module/PanoramaModule;->keepScreenOn()V

    .line 615
    return-void
.end method
