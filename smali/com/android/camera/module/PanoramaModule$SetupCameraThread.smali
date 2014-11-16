.class Lcom/android/camera/module/PanoramaModule$SetupCameraThread;
.super Ljava/lang/Thread;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupCameraThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    #calls: Lcom/android/camera/module/PanoramaModule;->setupCamera()V
    invoke-static {v1}, Lcom/android/camera/module/PanoramaModule;->access$000(Lcom/android/camera/module/PanoramaModule;)V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    iput-boolean v2, v1, Lcom/android/camera/module/PanoramaModule;->mOpenCameraFail:Z

    goto :goto_0

    .line 186
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/PanoramaModule;

    iput-boolean v2, v1, Lcom/android/camera/module/PanoramaModule;->mCameraDisabled:Z

    goto :goto_0
.end method
