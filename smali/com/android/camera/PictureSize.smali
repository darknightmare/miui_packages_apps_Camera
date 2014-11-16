.class public Lcom/android/camera/PictureSize;
.super Ljava/lang/Object;
.source "PictureSize.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/PictureSize;",
        ">;"
    }
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/PictureSize;->setPictureSize(II)Lcom/android/camera/PictureSize;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/camera/PictureSize;->setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    .line 19
    return-void
.end method


# virtual methods
.method public area()I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public compareTo(Lcom/android/camera/PictureSize;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 74
    iget v0, p1, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/camera/PictureSize;->height:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    if-ne v0, v1, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    check-cast p1, Lcom/android/camera/PictureSize;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/PictureSize;->compareTo(Lcom/android/camera/PictureSize;)I

    move-result v0

    return v0
.end method

.method public isAspectRatio16_9()Z
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    goto :goto_0
.end method

.method public isAspectRatio4_3()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPictureSize(II)Lcom/android/camera/PictureSize;
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/camera/PictureSize;->width:I

    .line 39
    iput p2, p0, Lcom/android/camera/PictureSize;->height:I

    .line 40
    return-object p0
.end method

.method public setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;
    .locals 1
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/camera/PictureSize;->width:I

    .line 46
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/PictureSize;->height:I

    .line 51
    :goto_0
    return-object p0

    .line 48
    :cond_0
    iput v0, p0, Lcom/android/camera/PictureSize;->width:I

    .line 49
    iput v0, p0, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0
.end method

.method public setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 26
    if-nez p1, :cond_0

    move v0, v1

    .line 27
    .local v0, index:I
    :goto_0
    if-ne v0, v1, :cond_1

    .line 28
    iput v3, p0, Lcom/android/camera/PictureSize;->width:I

    .line 29
    iput v3, p0, Lcom/android/camera/PictureSize;->height:I

    .line 34
    :goto_1
    return-object p0

    .line 26
    .end local v0           #index:I
    :cond_0
    const/16 v2, 0x78

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0

    .line 31
    .restart local v0       #index:I
    :cond_1
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PictureSize;->width:I

    .line 32
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PictureSize;->height:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/PictureSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
