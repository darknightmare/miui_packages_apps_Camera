.class Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;
.super Ljava/lang/Object;
.source "DecodeUtils.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/DecodeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeCanceller"
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .parameter "options"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 44
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 49
    return-void
.end method
