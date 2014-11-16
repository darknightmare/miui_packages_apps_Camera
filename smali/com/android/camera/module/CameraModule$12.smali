.class Lcom/android/camera/module/CameraModule$12;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->initCountDownShutter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter

    .prologue
    .line 3899
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3903
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/AudioCaptureManager;->updateCaptureDelayView(Z)V

    .line 3904
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setCountDownCapturePreference(Z)V

    .line 3905
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 3906
    return-void
.end method
