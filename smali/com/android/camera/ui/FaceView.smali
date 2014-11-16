.class public Lcom/android/camera/ui/FaceView;
.super Lcom/android/camera/ui/FrameView;
.source "FaceView.java"


# static fields
.field private static final AGE_RANGE_ALIAS:[Ljava/lang/String;

.field private static final FACE_INFO_FORMAT:Ljava/lang/String;

.field private static final GENDER_FEMALE:Ljava/lang/String;

.field private static final GENDER_MALE:Ljava/lang/String;

.field private static configuration:Landroid/content/res/Configuration;


# instance fields
.field private final LOGV:Z

.field private mDisplayOrientation:I

.field private final mDrawableFocusing:Landroid/graphics/drawable/Drawable;

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

.field private mGenderAgeFormat:Ljava/lang/String;

.field private mLatestFaceIndex:I

.field private mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field mPaint:Landroid/graphics/Paint;

.field private mPause:Z

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d023b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FaceView;->GENDER_MALE:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d023c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FaceView;->GENDER_FEMALE:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d023a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FaceView;->FACE_INFO_FORMAT:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FaceView;->AGE_RANGE_ALIAS:[Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .line 57
    iput v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    return-void
.end method

.method private getAgeIndex(F)I
    .locals 1
    .parameter "age"

    .prologue
    .line 281
    const/high16 v0, 0x40e0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    .line 283
    :cond_0
    const/high16 v0, 0x4188

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 284
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    const/high16 v0, 0x41f0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 286
    const/4 v0, 0x2

    goto :goto_0

    .line 287
    :cond_2
    const/high16 v0, 0x4230

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    .line 288
    const/4 v0, 0x3

    goto :goto_0

    .line 289
    :cond_3
    const/high16 v0, 0x4270

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    .line 290
    const/4 v0, 0x4

    goto :goto_0

    .line 292
    :cond_4
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getShowInfo(Lcom/android/camera/hardware/QcomCamera$QcomFace;)Ljava/lang/String;
    .locals 7
    .parameter "face"

    .prologue
    const v5, 0x3ecccccd

    .line 297
    const-string v3, "on"

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mGenderAgeFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    sget-object v1, Lcom/android/camera/ui/FaceView;->GENDER_MALE:Ljava/lang/String;

    .line 299
    .local v1, gender:Ljava/lang/String;
    iget v3, p1, Lcom/android/camera/hardware/QcomCamera$QcomFace;->ageMale:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, age:Ljava/lang/String;
    iget v3, p1, Lcom/android/camera/hardware/QcomCamera$QcomFace;->gender:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 301
    sget-object v1, Lcom/android/camera/ui/FaceView;->GENDER_FEMALE:Ljava/lang/String;

    .line 302
    iget v3, p1, Lcom/android/camera/hardware/QcomCamera$QcomFace;->ageFemale:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_0
    sget-object v3, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v4, Lcom/android/camera/ui/FaceView;->FACE_INFO_FORMAT:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 313
    .end local v0           #age:Ljava/lang/String;
    .end local v1           #gender:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 306
    :cond_1
    iget v3, p1, Lcom/android/camera/hardware/QcomCamera$QcomFace;->ageMale:F

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getAgeIndex(F)I

    move-result v2

    .line 307
    .local v2, index:I
    iget v3, p1, Lcom/android/camera/hardware/QcomCamera$QcomFace;->gender:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    .line 308
    iget v3, p1, Lcom/android/camera/hardware/QcomCamera$QcomFace;->ageFemale:F

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getAgeIndex(F)I

    move-result v3

    add-int/lit8 v2, v3, 0x6

    .line 310
    :cond_2
    sget-object v3, Lcom/android/camera/ui/FaceView;->AGE_RANGE_ALIAS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 311
    sget-object v3, Lcom/android/camera/ui/FaceView;->AGE_RANGE_ALIAS:[Ljava/lang/String;

    aget-object v3, v3, v2

    goto :goto_0

    .line 313
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private showFaceInfo()Z
    .locals 2

    .prologue
    .line 277
    const-string v0, "off"

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mGenderAgeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLatestFaces()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 110
    iput v4, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 127
    :goto_1
    return-void

    .line 112
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    goto :goto_0

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v2, v4

    .line 119
    .local v0, face:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 122
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v2, v1

    .line 119
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aput-object v0, v2, v3

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .line 251
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreivousFaces()V

    .line 252
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 253
    return-void
.end method

.method public clearPreivousFaces()V
    .locals 3

    .prologue
    .line 261
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusRect()Landroid/graphics/RectF;
    .locals 9

    .prologue
    .line 130
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 131
    .local v7, rect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    .line 132
    .local v8, screenNail:Lcom/android/camera/CameraScreenNail;
    if-eqz v8, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 143
    .end local v7           #rect:Landroid/graphics/RectF;
    :goto_0
    return-object v7

    .restart local v7       #rect:Landroid/graphics/RectF;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public isFrameAreaStable()Z
    .locals 13

    .prologue
    .line 148
    const/4 v5, 0x0

    .line 149
    .local v5, emptyFacesCount:I
    const/4 v4, 0x0

    .local v4, averageWidth:I
    const/4 v1, 0x0

    .local v1, averageHeight:I
    const/4 v2, 0x0

    .local v2, averageLeft:I
    const/4 v3, 0x0

    .local v3, averageTop:I
    const/4 v7, 0x0

    .line 150
    .local v7, faceCount:I
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .local v0, arr$:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    array-length v10, v0

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v6, v0, v9

    .line 152
    .local v6, face:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    if-nez v6, :cond_0

    .line 153
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x3

    if-lt v5, v11, :cond_1

    .line 154
    const/4 v11, 0x0

    .line 184
    .end local v6           #face:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :goto_1
    return v11

    .line 159
    .restart local v6       #face:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :cond_0
    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v4, v11

    .line 160
    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v1, v11

    .line 161
    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v11

    .line 162
    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v11

    .line 150
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 164
    .end local v6           #face:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :cond_2
    iget-object v11, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v11, v11

    sub-int v7, v11, v5

    .line 165
    div-int/2addr v4, v7

    .line 166
    div-int/2addr v1, v7

    .line 167
    div-int/2addr v2, v7

    .line 168
    div-int/2addr v3, v7

    .line 169
    div-int/lit8 v11, v4, 0x3

    const/16 v12, 0x5a

    if-le v11, v12, :cond_4

    div-int/lit8 v8, v4, 0x3

    .line 172
    .local v8, faceWidthRestrict:I
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v10, v0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_7

    aget-object v6, v0, v9

    .line 173
    .restart local v6       #face:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    if-nez v6, :cond_5

    .line 172
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 169
    .end local v6           #face:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .end local v8           #faceWidthRestrict:I
    :cond_4
    const/16 v8, 0x5a

    goto :goto_2

    .line 176
    .restart local v6       #face:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .restart local v8       #faceWidthRestrict:I
    :cond_5
    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v11, v8, :cond_6

    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-gt v11, v12, :cond_6

    iget-object v11, v6, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-le v11, v12, :cond_3

    .line 179
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 183
    .end local v6           #face:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :cond_7
    const/16 v11, 0x29e

    if-gt v4, v11, :cond_8

    const/16 v11, 0x29e

    if-le v1, v11, :cond_9

    :cond_8
    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p0, Lcom/android/camera/ui/FrameView;->mIsBigEnoughRect:Z

    .line 184
    const/4 v11, 0x1

    goto :goto_1

    .line 183
    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v9

    .line 320
    .local v9, screenNail:Lcom/android/camera/CameraScreenNail;
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v0, v0

    if-lez v0, :cond_3

    if-eqz v9, :cond_3

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual {v9}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v9}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 327
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 328
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    array-length v0, v0

    if-ge v7, v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showFaceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v0, v7

    instance-of v0, v0, Lcom/android/camera/hardware/QcomCamera$QcomFace;

    if-eqz v0, :cond_0

    .line 336
    const/high16 v1, 0x3f00

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v0, v7

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomFace;

    iget v0, v0, Lcom/android/camera/hardware/QcomCamera$QcomFace;->prob:F

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v0, v7

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomFace;

    iget v0, v0, Lcom/android/camera/hardware/QcomCamera$QcomFace;->gender:F

    const v1, 0x3ecccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v0, v7

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomFace;

    iget v0, v0, Lcom/android/camera/hardware/QcomCamera$QcomFace;->gender:F

    const v1, 0x3f19999a

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 328
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    aget-object v0, v0, v7

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomFace;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FaceView;->getShowInfo(Lcom/android/camera/hardware/QcomCamera$QcomFace;)Ljava/lang/String;

    move-result-object v8

    .line 341
    .local v8, info:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41a0

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x4270

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 345
    .end local v8           #info:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 347
    .end local v7           #i:I
    :cond_3
    invoke-super {p0, p1}, Lcom/android/camera/ui/FrameView;->onDraw(Landroid/graphics/Canvas;)V

    .line 348
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->pause()V

    .line 257
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreivousFaces()V

    .line 258
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 270
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 188
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 189
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method public setFaces([Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Z
    .locals 3
    .parameter "faces"

    .prologue
    .line 96
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num of faces="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .line 99
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateLatestFaces()V

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setGenderAgeFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "show"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mGenderAgeFormat:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setMirror(Z)V
    .locals 3
    .parameter "mirror"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 200
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 194
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 195
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 196
    return-void
.end method

.method public showFail(ZZ)V
    .locals 1
    .parameter "timeout"
    .parameter "isTouchFocus"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 243
    return-void
.end method

.method public showStart(ZZ)V
    .locals 1
    .parameter "timeout"
    .parameter "isTouchFocus"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 229
    return-void
.end method

.method public showSuccess(ZZ)V
    .locals 1
    .parameter "timeout"
    .parameter "isTouchFocus"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 235
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 236
    return-void
.end method
