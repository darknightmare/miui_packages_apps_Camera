.class Lcom/android/gallery3d/exif/ExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfdEvent"
.end annotation


# instance fields
.field ifd:I

.field isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .parameter "ifd"
    .parameter "isInterestedIfd"

    .prologue
    .line 894
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput p1, p0, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    .line 896
    iput-boolean p2, p0, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->isRequested:Z

    .line 897
    return-void
.end method
