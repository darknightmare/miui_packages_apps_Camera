.class public Lcom/android/gallery3d/ui/BitmapTexture;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "hasBorder"

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>(Z)V

    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTarget()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTarget()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 44
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method
