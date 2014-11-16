.class Lcom/android/camera/module/BaseModule$EvChangeListener;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/android/camera/ui/EvControlBar$OnEvChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/BaseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/BaseModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/BaseModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/android/camera/module/BaseModule$EvChangeListener;-><init>(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method


# virtual methods
.method public onEvValueChanged(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mMaxExposureCompensation:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_2

    .line 1042
    :cond_1
    :goto_0
    return-void

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->sendFadeoutEvMsg()V

    .line 1035
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget v1, v1, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 1037
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget v1, v1, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 1038
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget v2, v2, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getGLSurfaceStatusBar()Lcom/android/camera/GLSurfaceStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget v1, v1, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/GLSurfaceStatusBar;->updateEv(I)V

    .line 1040
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetManualExposure()V

    .line 1041
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$EvChangeListener;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators()V

    goto :goto_0
.end method
