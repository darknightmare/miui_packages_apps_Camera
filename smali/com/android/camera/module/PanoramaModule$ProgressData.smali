.class Lcom/android/camera/module/PanoramaModule$ProgressData;
.super Ljava/lang/Object;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressData"
.end annotation


# instance fields
.field isFinished:Z

.field panningRateX:F

.field panningRateY:F

.field progressX:F

.field progressY:F

.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$ProgressData;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/android/camera/module/PanoramaModule$ProgressData;-><init>(Lcom/android/camera/module/PanoramaModule;)V

    return-void
.end method
