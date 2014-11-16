.class Lcom/android/camera/module/PanoramaModule$MosaicJpeg;
.super Ljava/lang/Object;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 200
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->data:[B

    .line 202
    iput v1, p0, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->width:I

    .line 203
    iput v1, p0, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->height:I

    .line 204
    iput-boolean v1, p0, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->isValid:Z

    .line 205
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/PanoramaModule;[BII)V
    .locals 1
    .parameter
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->data:[B

    .line 195
    iput p3, p0, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->width:I

    .line 196
    iput p4, p0, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->height:I

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/PanoramaModule$MosaicJpeg;->isValid:Z

    .line 198
    return-void
.end method
