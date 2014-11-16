.class Lcom/android/camera/camera_adapter/CameraM3W$1;
.super Ljava/lang/Object;
.source "CameraM3W.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/CameraM3W;->initMeasureWhiteBalanceUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraM3W;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/CameraM3W;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraM3W$1;->this$0:Lcom/android/camera/camera_adapter/CameraM3W;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraM3W$1;->this$0:Lcom/android/camera/camera_adapter/CameraM3W;

    #calls: Lcom/android/camera/camera_adapter/CameraM3W;->lockCurrentWhiteBalance()V
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraM3W;->access$000(Lcom/android/camera/camera_adapter/CameraM3W;)V

    .line 395
    return-void
.end method
