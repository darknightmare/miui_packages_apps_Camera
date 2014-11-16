.class Lcom/android/camera/module/PanoramaModule$3;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/PanoramaModule;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$3;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 4
    .parameter "isFinished"
    .parameter "panningRateX"
    .parameter "panningRateY"
    .parameter "progressX"
    .parameter "progressY"

    .prologue
    .line 589
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 590
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 591
    new-instance v1, Lcom/android/camera/module/PanoramaModule$ProgressData;

    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$3;->this$0:Lcom/android/camera/module/PanoramaModule;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/module/PanoramaModule$ProgressData;-><init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V

    .line 592
    .local v1, pd:Lcom/android/camera/module/PanoramaModule$ProgressData;
    iput-boolean p1, v1, Lcom/android/camera/module/PanoramaModule$ProgressData;->isFinished:Z

    .line 593
    iput p2, v1, Lcom/android/camera/module/PanoramaModule$ProgressData;->panningRateX:F

    .line 594
    iput p3, v1, Lcom/android/camera/module/PanoramaModule$ProgressData;->panningRateY:F

    .line 595
    iput p4, v1, Lcom/android/camera/module/PanoramaModule$ProgressData;->progressX:F

    .line 596
    iput p5, v1, Lcom/android/camera/module/PanoramaModule$ProgressData;->progressY:F

    .line 597
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 598
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$3;->this$0:Lcom/android/camera/module/PanoramaModule;

    #getter for: Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/module/PanoramaModule;->access$300(Lcom/android/camera/module/PanoramaModule;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 599
    return-void
.end method
