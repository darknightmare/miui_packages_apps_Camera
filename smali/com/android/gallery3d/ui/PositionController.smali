.class Lcom/android/gallery3d/ui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PositionController$1;,
        Lcom/android/gallery3d/ui/PositionController$FilmRatio;,
        Lcom/android/gallery3d/ui/PositionController$Gap;,
        Lcom/android/gallery3d/ui/PositionController$Box;,
        Lcom/android/gallery3d/ui/PositionController$Platform;,
        Lcom/android/gallery3d/ui/PositionController$Animatable;,
        Lcom/android/gallery3d/ui/PositionController$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_TIME:[I

.field private static final CENTER_OUT_INDEX:[I

.field private static final HORIZONTAL_SLACK:I

.field private static final IMAGE_GAP:I


# instance fields
.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private mBoxes:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrained:Z

.field private mConstrainedFrame:Landroid/graphics/Rect;

.field private mExtraScalingRange:Z

.field private mFilmMode:Z

.field private mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

.field private mFilmScroller:Landroid/widget/OverScroller;

.field private mFocusX:F

.field private mFocusY:F

.field private mGaps:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mInScale:Z

.field private mIsCamera:Z

.field private mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

.field private volatile mOpenAnimationRect:Landroid/graphics/Rect;

.field private mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

.field private mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

.field mPopFromTop:Z

.field private mRects:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTempBoxes:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mTempGaps:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewH:I

.field private mViewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    .line 101
    const/4 v2, 0x7

    new-array v2, v2, [I

    sput-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    .line 103
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 104
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 210
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v1, v2, 0x2

    .line 211
    .local v1, j:I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    neg-int v1, v1

    .line 212
    :cond_0
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aput v1, v2, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v1           #j:I
    :cond_1
    return-void

    .line 63
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc2t 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc2t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V
    .locals 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, -0x3

    .line 216
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 90
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 114
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 115
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .line 147
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    .line 158
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mIsCamera:Z

    .line 173
    new-instance v1, Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Platform;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 174
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 177
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    .line 178
    new-instance v1, Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    .line 181
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 182
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    .line 186
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    .line 217
    iput-object p2, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    .line 218
    new-instance v1, Lcom/android/gallery3d/ui/FlingScroller;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/FlingScroller;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    .line 219
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1, v4, v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    .line 223
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->initPlatform()V

    .line 224
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {v2, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Box;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 226
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->initBox(I)V

    .line 227
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v3, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-direct {v2, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Gap;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 231
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->initGap(I)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PositionController;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PositionController;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    return v0
.end method

.method static synthetic access$2400()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PositionController;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/ui/PositionController;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mIsCamera:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method private calculateStableBound(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 1363
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    .line 1364
    return-void
.end method

.method private calculateStableBound(FI)V
    .locals 6
    .parameter "scale"
    .parameter "horizontalSlack"

    .prologue
    const/4 v5, 0x0

    .line 1338
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1341
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v2

    .line 1342
    .local v2, w:I
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v1

    .line 1345
    .local v1, h:I
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1346
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    .line 1347
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1348
    div-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    .line 1352
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1353
    iput v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    iput v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1357
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1358
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1360
    :cond_1
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 572
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 573
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 580
    :goto_0
    :sswitch_0
    return v1

    .line 574
    :cond_0
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 580
    goto :goto_0

    .line 574
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private convertBoxToRect(I)V
    .locals 10
    .parameter "i"

    .prologue
    .line 900
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 901
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 902
    .local v4, r:Landroid/graphics/Rect;
    iget v8, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v9, v9, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 903
    .local v7, y:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v5

    .line 904
    .local v5, w:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 905
    .local v3, h:I
    if-nez p1, :cond_0

    .line 906
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v8, v8, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 907
    .local v6, x:I
    div-int/lit8 v8, v5, 0x2

    sub-int v8, v6, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 908
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 920
    .end local v6           #x:I
    :goto_0
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v7, v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 921
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 922
    return-void

    .line 909
    :cond_0
    if-lez p1, :cond_1

    .line 910
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 911
    .local v0, a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 912
    .local v2, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 913
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 915
    .end local v0           #a:Landroid/graphics/Rect;
    .end local v2           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 916
    .restart local v0       #a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 917
    .restart local v2       #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 918
    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 3
    .parameter "b"

    .prologue
    .line 431
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iget v2, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDefaultGapSize(I)I
    .locals 5
    .parameter "i"

    .prologue
    .line 412
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 415
    :goto_0
    return v2

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 414
    .local v0, a:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 415
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    sget v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 4
    .parameter "b"

    .prologue
    .line 1309
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    .line 1313
    :goto_0
    return v1

    .line 1310
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    goto :goto_0

    .line 1311
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    int-to-float v1, v1

    iget v2, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    int-to-float v2, v2

    iget v3, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1313
    .local v0, s:F
    const v1, 0x3f8ccccd

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0
.end method

.method private getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 9
    .parameter "b"

    .prologue
    const v8, 0x3f8ccccd

    .line 1277
    const/high16 v4, 0x3f80

    .line 1278
    .local v4, wFactor:F
    const/high16 v0, 0x3f80

    .line 1281
    .local v0, hFactor:F
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 1283
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1284
    .local v3, viewW:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1290
    .local v2, viewH:I
    :goto_0
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v5, :cond_0

    .line 1291
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    if-le v5, v6, :cond_2

    .line 1292
    const v4, 0x3f333333

    .line 1293
    const v0, 0x3ef5c28f

    .line 1300
    :cond_0
    :goto_1
    int-to-float v5, v3

    mul-float/2addr v5, v4

    iget v6, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v0

    iget v7, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1302
    .local v1, s:F
    cmpl-float v5, v1, v8

    if-ltz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v5, :cond_3

    .line 1305
    .end local v1           #s:F
    :goto_2
    return v1

    .line 1286
    .end local v2           #viewH:I
    .end local v3           #viewW:I
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 1287
    .restart local v3       #viewW:I
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .restart local v2       #viewH:I
    goto :goto_0

    .line 1295
    :cond_2
    const v4, 0x3f333333

    .line 1296
    const v0, 0x3f333333

    goto :goto_1

    .line 1305
    .restart local v1       #s:F
    :cond_3
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_2
.end method

.method private getTargetScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 4
    .parameter "b"

    .prologue
    .line 1375
    iget-wide v0, p1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_0
.end method

.method private heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 840
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 850
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initBox(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 944
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 945
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 946
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 947
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 948
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 949
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 950
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 951
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 952
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    .line 953
    return-void
.end method

.method private initBox(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 957
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 958
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->initBox(I)V

    .line 971
    :goto_0
    return-void

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 962
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 963
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 964
    iput-boolean v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 965
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 966
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 967
    iput v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 968
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 969
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 970
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    goto :goto_0
.end method

.method private initGap(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 976
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 977
    .local v0, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 978
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 979
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 980
    return-void
.end method

.method private initGap(II)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 984
    .local v0, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 985
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 986
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 987
    return-void
.end method

.method private initPlatform()V
    .locals 3

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 936
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 937
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 938
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 939
    return-void
.end method

.method private static isAlmostEqual(FF)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1317
    sub-float v0, p0, p1

    .line 1318
    .local v0, diff:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    .end local v0           #diff:F
    :cond_0
    const v1, 0x3ca3d70a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutAndSetPosition()V
    .locals 2

    .prologue
    .line 859
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 860
    sget-object v1, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->convertBoxToRect(I)V

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 863
    :cond_0
    return-void
.end method

.method private redraw()V
    .locals 1

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 785
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PositionController$Listener;->invalidate()V

    .line 786
    return-void
.end method

.method private setBoxSize(IIIZ)Z
    .locals 5
    .parameter "i"
    .parameter "width"
    .parameter "height"
    .parameter "isViewSize"

    .prologue
    const/4 v3, 0x0

    .line 302
    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 303
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 306
    .local v2, wasViewSize:Z
    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v3

    .line 308
    :cond_1
    iput-boolean p4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 310
    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    if-ne p2, v4, :cond_2

    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    if-eq p3, v4, :cond_0

    .line 321
    :cond_2
    if-le p2, p3, :cond_6

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float v1, v3, v4

    .line 325
    .local v1, ratio:F
    :goto_1
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 326
    iput p3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 331
    if-eqz v2, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PositionController$Listener;->canIgnoreAnimation()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 332
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 333
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 340
    :goto_2
    if-nez p1, :cond_5

    .line 341
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    .line 342
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    .line 345
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 321
    .end local v1           #ratio:F
    :cond_6
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float v1, v3, v4

    goto :goto_1

    .line 335
    .restart local v1       #ratio:F
    :cond_7
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 336
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    .line 337
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_2
.end method

.method private snapAndRedraw()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 789
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Platform;->startSnapback()Z

    .line 790
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 791
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Box;->startSnapback()Z

    .line 790
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 793
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v2, :cond_1

    .line 794
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Gap;->startSnapback()Z

    .line 793
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->startSnapback()Z

    .line 797
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 798
    return-void
.end method

.method private startAnimation(IIFI)Z
    .locals 3
    .parameter "targetX"
    .parameter "targetY"
    .parameter "targetScale"
    .parameter "kind"

    .prologue
    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v1, p1, v2, p4}, Lcom/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z

    move-result v1

    or-int/2addr v0, v1

    .line 804
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, p2, p3, p4}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v1

    or-int/2addr v0, v1

    .line 805
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 806
    :cond_0
    return v0
.end method

.method private startOpeningAnimationIfNeeded()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 349
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v4

    .line 350
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 351
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-boolean v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    if-nez v6, :cond_0

    .line 354
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 355
    .local v3, r:Landroid/graphics/Rect;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 357
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 358
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 359
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 361
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v6, v6, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-direct {p0, v6, v4, v7, v9}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 366
    const/4 v2, -0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 367
    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 368
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iput v4, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 369
    iget v4, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v4, v9}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_2
    move v4, v5

    .line 372
    goto :goto_0
.end method

.method private updateScaleAndGapLimit()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 397
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_0

    .line 398
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 399
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 400
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_0
    const/4 v2, -0x3

    :goto_1
    if-ge v2, v4, :cond_1

    .line 404
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 405
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 407
    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_1
    return-void
.end method

.method private viewTallerThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1367
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private viewWiderThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1371
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 835
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 845
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public advanceAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, changed:Z
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 812
    const/4 v1, -0x3

    .local v1, i:I
    :goto_0
    if-gt v1, v3, :cond_0

    .line 813
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Box;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 812
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 815
    :cond_0
    const/4 v1, -0x3

    :goto_1
    if-ge v1, v3, :cond_1

    .line 816
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Gap;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 815
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 818
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 819
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 820
    :cond_2
    return-void
.end method

.method public beginScale(FF)V
    .locals 5
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v4, 0x3f00

    .line 507
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 508
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 509
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 510
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 511
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    .line 512
    iget v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    .line 513
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    .line 514
    return-void
.end method

.method public endScale()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    .line 543
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 544
    return-void
.end method

.method public flingFilmX(I)Z
    .locals 13
    .parameter "velocityX"

    .prologue
    const/4 v2, 0x0

    .line 698
    if-nez p1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v2

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 701
    .local v9, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 704
    .local v11, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v10, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 705
    .local v10, defaultX:I
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v0, :cond_2

    iget v0, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ge v0, v10, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v0, :cond_3

    iget v0, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-le v0, v10, :cond_0

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    iget v1, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    const/high16 v5, -0x8000

    const v6, 0x7fffffff

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 712
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v12

    .line 713
    .local v12, targetX:I
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v1, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v2, 0x7

    invoke-direct {p0, v12, v0, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v2

    goto :goto_0
.end method

.method public flingFilmY(II)I
    .locals 8
    .parameter "boxIndex"
    .parameter "velocityY"

    .prologue
    const/16 v7, 0x8

    .line 721
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 724
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 726
    .local v3, h:I
    const/4 v0, 0x3

    .line 727
    .local v0, FUZZY:I
    if-ltz p2, :cond_0

    if-nez p2, :cond_1

    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-gtz v5, :cond_1

    .line 728
    :cond_0
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v3, 0x1

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sub-int v4, v5, v0

    .line 735
    .local v4, targetY:I
    :goto_0
    if-eqz p2, :cond_2

    .line 736
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 738
    .local v2, duration:I
    const/16 v5, 0x190

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 744
    :goto_1
    sget-object v5, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    aput v2, v5, v7

    .line 745
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, v4, v5, v7}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 746
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 749
    .end local v2           #duration:I
    :goto_2
    return v2

    .line 730
    .end local v4           #targetY:I
    :cond_1
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    add-int v4, v5, v0

    .restart local v4       #targetY:I
    goto :goto_0

    .line 740
    :cond_2
    const/16 v2, 0xc8

    .restart local v2       #duration:I
    goto :goto_1

    .line 749
    :cond_3
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public flingPage(II)Z
    .locals 14
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 667
    .local v9, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 670
    .local v11, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 694
    :goto_0
    return v0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v10

    .line 678
    .local v10, edges:I
    if-lez p1, :cond_1

    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_2

    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_3

    .line 680
    :cond_2
    const/4 p1, 0x0

    .line 682
    :cond_3
    if-lez p2, :cond_4

    and-int/lit8 v0, v10, 0x4

    if-nez v0, :cond_5

    :cond_4
    if-gez p2, :cond_6

    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_6

    .line 684
    :cond_5
    const/16 p2, 0x0

    .line 687
    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    .line 689
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    iget v1, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/FlingScroller;->fling(IIIIIIII)V

    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FlingScroller;->getFinalX()I

    move-result v12

    .line 692
    .local v12, targetX:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FlingScroller;->getFinalY()I

    move-result v13

    .line 693
    .local v13, targetY:I
    sget-object v0, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FlingScroller;->getDuration()I

    move-result v2

    aput v2, v0, v1

    .line 694
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v1, 0x6

    invoke-direct {p0, v12, v13, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v0

    goto :goto_0
.end method

.method public forceImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 2
    .parameter "index"
    .parameter "s"

    .prologue
    .line 277
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 279
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 280
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    goto :goto_0
.end method

.method public getFilmRatio()F
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    return v0
.end method

.method public getImageAtEdges()I
    .locals 5

    .prologue
    .line 1225
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1226
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 1227
    .local v2, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 1228
    const/4 v1, 0x0

    .line 1229
    .local v1, edges:I
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-gt v3, v4, :cond_0

    .line 1230
    or-int/lit8 v1, v1, 0x2

    .line 1232
    :cond_0
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-lt v3, v4, :cond_1

    .line 1233
    or-int/lit8 v1, v1, 0x1

    .line 1235
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-gt v3, v4, :cond_2

    .line 1236
    or-int/lit8 v1, v1, 0x8

    .line 1238
    :cond_2
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-lt v3, v4, :cond_3

    .line 1239
    or-int/lit8 v1, v1, 0x4

    .line 1241
    :cond_3
    return v1
.end method

.method public getImageHeight()I
    .locals 3

    .prologue
    .line 1210
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1211
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    return v1
.end method

.method public getImageMaxScale()F
    .locals 3

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1221
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    return v1
.end method

.method public getImageScale()F
    .locals 3

    .prologue
    .line 1215
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1216
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    return v1
.end method

.method public getImageWidth()I
    .locals 3

    .prologue
    .line 1205
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1206
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    return v1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasDeletingBox()Z
    .locals 3

    .prologue
    .line 1264
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 1265
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1266
    const/4 v1, 0x1

    .line 1269
    :goto_1
    return v1

    .line 1264
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1269
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hitTest(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 757
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 758
    sget-object v3, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v3, v0

    .line 759
    .local v1, j:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 760
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :goto_1
    return v1

    .line 757
    .restart local v1       #j:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public inOpeningAnimation()Z
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 823
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v2, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    iget-wide v2, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isAtMinimalScale()Z
    .locals 3

    .prologue
    .line 1194
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1195
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v1

    return v1
.end method

.method public isCenter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1199
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1200
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isScrolling()Z
    .locals 4

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 19
    .parameter "fromIndex"
    .parameter "hasPrev"
    .parameter "hasNext"
    .parameter "constrained"
    .parameter "sizes"

    .prologue
    .line 1023
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    .line 1024
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    .line 1026
    new-instance v7, Lcom/android/gallery3d/util/RangeIntArray;

    const/16 v17, -0x3

    const/16 v18, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v7, v0, v1, v2}, Lcom/android/gallery3d/util/RangeIntArray;-><init>([III)V

    .line 1029
    .local v7, from:Lcom/android/gallery3d/util/RangeIntArray;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 1030
    const/4 v9, -0x3

    .local v9, i:I
    :goto_0
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_0

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1032
    .local v4, b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 1033
    .local v14, r:Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1030
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1037
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v14           #r:Landroid/graphics/Rect;
    :cond_0
    const/4 v9, -0x3

    :goto_1
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_1

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1037
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1041
    :cond_1
    const/4 v9, -0x3

    :goto_2
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1041
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1047
    :cond_2
    const/4 v9, -0x3

    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_4

    .line 1048
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1049
    .local v10, j:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    .line 1047
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1050
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 1055
    .end local v10           #j:I
    :cond_4
    const/4 v9, -0x3

    :goto_5
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 1056
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1057
    .restart local v10       #j:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_6

    .line 1055
    :cond_5
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1058
    :cond_6
    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v11

    .line 1059
    .local v11, k:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v11, v0, :cond_5

    .line 1060
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    if-ne v0, v11, :cond_5

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 1067
    .end local v10           #j:I
    .end local v11           #k:I
    :cond_7
    const/4 v11, -0x3

    .line 1068
    .restart local v11       #k:I
    const/4 v9, -0x3

    :goto_7
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_a

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 1068
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1070
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_9

    .line 1071
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 1073
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .local v12, k:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1074
    add-int/lit8 v17, v9, 0x3

    aget-object v17, p5, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/android/gallery3d/ui/PositionController;->initBox(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_8

    .line 1082
    :cond_a
    const/4 v6, -0x3

    .local v6, first:I
    :goto_a
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v6, v0, :cond_b

    .line 1083
    invoke-virtual {v7, v6}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 1085
    :cond_b
    const/4 v13, 0x3

    .local v13, last:I
    :goto_b
    const/16 v17, -0x3

    move/from16 v0, v17

    if-lt v13, v0, :cond_c

    .line 1086
    invoke-virtual {v7, v13}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 1090
    :cond_c
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v6, v0, :cond_d

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1092
    const/4 v13, 0x0

    move v6, v13

    .line 1100
    :cond_d
    const/16 v17, 0x0

    add-int/lit8 v18, v6, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_c
    if-ge v9, v13, :cond_12

    .line 1101
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 1100
    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 1082
    .end local v13           #last:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1085
    .restart local v13       #last:I
    :cond_f
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 1102
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1103
    .local v3, a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1104
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1105
    .local v15, wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1106
    .local v16, wb:I
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    add-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_d

    .line 1111
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto/16 :goto_d

    .line 1116
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_12
    const/16 v17, -0x1

    add-int/lit8 v18, v13, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_e
    if-le v9, v6, :cond_15

    .line 1117
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 1116
    :goto_f
    add-int/lit8 v9, v9, -0x1

    goto :goto_e

    .line 1118
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1119
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1120
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1121
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1122
    .restart local v16       #wb:I
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v18, v16, v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1124
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 1125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1127
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1132
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_15
    const/4 v11, -0x3

    .line 1133
    const/4 v9, -0x3

    :goto_10
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_19

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_16

    .line 1133
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 1135
    :cond_16
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_17

    .line 1136
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1138
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .restart local v12       #k:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1140
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1141
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1142
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1143
    .restart local v16       #wb:I
    if-lt v9, v6, :cond_18

    if-ge v9, v13, :cond_18

    .line 1144
    iget v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    sub-int v8, v17, v18

    .line 1145
    .local v8, g:I
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/gallery3d/ui/PositionController;->initGap(II)V

    move v11, v12

    .line 1146
    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_11

    .line 1147
    .end local v8           #g:I
    .end local v11           #k:I
    .restart local v12       #k:I
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->initGap(I)V

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_11

    .line 1153
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_19
    add-int/lit8 v9, v6, -0x1

    :goto_13
    const/16 v17, -0x3

    move/from16 v0, v17

    if-lt v9, v0, :cond_1a

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1155
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1156
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1157
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1158
    .restart local v16       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1159
    .local v8, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v18, v16, v18

    sub-int v17, v17, v18

    iget v0, v8, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1153
    add-int/lit8 v9, v9, -0x1

    goto :goto_13

    .line 1162
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v8           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_1a
    add-int/lit8 v9, v13, 0x1

    :goto_14
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_1b

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1164
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1165
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1166
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1167
    .restart local v16       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1168
    .restart local v8       #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    add-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    add-int v17, v17, v18

    iget v0, v8, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1162
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 1172
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v8           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 1173
    .local v5, dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1178
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p4

    if-eq v0, v1, :cond_1c

    .line 1179
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    .line 1181
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mIsCamera:Z

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 1183
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 1186
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 1187
    return-void
.end method

.method public resetToFullView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 502
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 503
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 504
    return-void
.end method

.method public scaleBy(FFF)I
    .locals 8
    .parameter "s"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x3f00

    .line 522
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p2, v6

    .line 523
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p3, v6

    .line 524
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 525
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 532
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getTargetScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p1

    .line 533
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_1

    iget v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 534
    .local v2, x:I
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 535
    .local v3, y:I
    :goto_1
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 536
    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_3

    const/4 v4, -0x1

    .line 538
    :cond_0
    :goto_2
    return v4

    .line 533
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    mul-float/2addr v6, p1

    sub-float v6, p2, v6

    add-float/2addr v6, v7

    float-to-int v2, v6

    goto :goto_0

    .line 534
    .restart local v2       #x:I
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    mul-float/2addr v6, p1

    sub-float v6, p3, v6

    add-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_1

    .line 537
    .restart local v3       #y:I
    :cond_3
    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_0

    move v4, v5

    .line 538
    goto :goto_2
.end method

.method public scrollFilmX(I)V
    .locals 8
    .parameter "dx"

    .prologue
    const/4 v7, 0x0

    .line 622
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v3

    if-nez v3, :cond_0

    .line 654
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 625
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 629
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 630
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 640
    :cond_1
    :sswitch_0
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v2, v3, p1

    .line 644
    .local v2, x:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    sub-int/2addr v2, v3

    .line 645
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v3, :cond_3

    if-lez v2, :cond_3

    .line 646
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 647
    const/4 v2, 0x0

    .line 652
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    add-int/2addr v2, v3

    .line 653
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 648
    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v3, :cond_2

    if-gez v2, :cond_2

    .line 649
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    neg-int v4, v2

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 650
    const/4 v2, 0x0

    goto :goto_1

    .line 630
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public scrollFilmY(II)V
    .locals 4
    .parameter "boxIndex"
    .parameter "dy"

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v2

    if-nez v2, :cond_0

    .line 663
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 660
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v1, v2, p2

    .line 661
    .local v1, y:I
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v3, 0x0

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 662
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    goto :goto_0
.end method

.method public scrollPage(II)V
    .locals 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v8, 0x0

    .line 584
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v5

    if-nez v5, :cond_0

    .line 619
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 587
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 589
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v5}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 591
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v3, v5, p1

    .line 592
    .local v3, x:I
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v4, v5, p2

    .line 596
    .local v4, y:I
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-eq v5, v6, :cond_1

    .line 597
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-ge v4, v5, :cond_3

    .line 598
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    sub-int/2addr v6, v4

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 604
    :cond_1
    :goto_1
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    .line 608
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-le v3, v5, :cond_4

    .line 609
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    sub-int v2, v3, v5

    .line 610
    .local v2, pixels:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 611
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    .line 618
    .end local v2           #pixels:I
    :cond_2
    :goto_2
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 599
    :cond_3
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-le v4, v5, :cond_1

    .line 600
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    sub-int v6, v4, v6

    invoke-interface {v5, v6, v8}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    goto :goto_1

    .line 612
    :cond_4
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-ge v3, v5, :cond_2

    .line 613
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    sub-int v2, v5, v3

    .line 614
    .restart local v2       #pixels:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 615
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    goto :goto_2
.end method

.method public setConstrainedFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "cFrame"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 272
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 273
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setExtraScalingRange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    if-ne v0, p1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 388
    if-nez p1, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setFilmMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-ne p1, v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 377
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 380
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 381
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->stopAnimation()V

    .line 382
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "index"
    .parameter "s"
    .parameter "cFrame"

    .prologue
    .line 285
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const/4 v0, 0x0

    .line 288
    .local v0, needUpdate:Z
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 290
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 291
    const/4 v0, 0x1

    .line 293
    :cond_2
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iget v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 295
    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 297
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setIsCamera(Z)V
    .locals 0
    .parameter "isCamera"

    .prologue
    .line 1849
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mIsCamera:Z

    .line 1850
    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 237
    return-void
.end method

.method public setPopFromTop(Z)V
    .locals 0
    .parameter "top"

    .prologue
    .line 1260
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    .line 1261
    return-void
.end method

.method public setViewSize(II)V
    .locals 5
    .parameter "viewW"
    .parameter "viewH"

    .prologue
    .line 240
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    if-ne p2, v3, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 244
    .local v2, wasMinimal:Z
    iput p1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 245
    iput p2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .line 246
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->initPlatform()V

    .line 248
    const/4 v1, -0x3

    .local v1, i:I
    :goto_1
    const/4 v3, 0x3

    if-gt v1, v3, :cond_2

    .line 249
    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 256
    if-eqz v2, :cond_3

    .line 257
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 258
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 263
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->startOpeningAnimationIfNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0
.end method

.method public skipAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-wide/16 v5, -0x1

    .line 446
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v3, v3, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 447
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v4, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 448
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v4, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 449
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iput-wide v5, v3, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 451
    :cond_0
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-gt v2, v7, :cond_2

    .line 452
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 453
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 451
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToY:I

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 455
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 456
    iput-wide v5, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    goto :goto_1

    .line 458
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_2
    const/4 v2, -0x3

    :goto_2
    if-ge v2, v7, :cond_4

    .line 459
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 460
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget-wide v3, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 458
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 461
    :cond_3
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 462
    iput-wide v5, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    goto :goto_3

    .line 464
    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 465
    return-void
.end method

.method public skipToFinalPosition()V
    .locals 0

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->stopAnimation()V

    .line 473
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 474
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 475
    return-void
.end method

.method public snapback()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 469
    return-void
.end method

.method public startCaptureAnimationSlide(I)V
    .locals 8
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x9

    .line 557
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 558
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 559
    .local v2, n:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 561
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v5, v5, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z

    .line 563
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v7, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 564
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v2, v7, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 565
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 566
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 567
    return-void
.end method

.method public startHorizontalSlide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 548
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 549
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 550
    return-void
.end method

.method public stopAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/16 v2, -0x1

    .line 436
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 437
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v4, :cond_1

    .line 441
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 443
    :cond_1
    return-void
.end method

.method public stopScrolling()V
    .locals 4

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1253
    :goto_0
    return-void

    .line 1251
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v2, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    goto :goto_0
.end method

.method public zoomIn(FFF)V
    .locals 10
    .parameter "tapX"
    .parameter "tapY"
    .parameter "targetScale"

    .prologue
    const/high16 v9, 0x3f00

    .line 482
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p1, v7

    .line 483
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p2, v7

    .line 484
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 487
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v7, v7, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v3, v7, v8

    .line 488
    .local v3, tempX:F
    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v4, v7, v8

    .line 490
    .local v4, tempY:F
    neg-float v7, v3

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v5, v7

    .line 491
    .local v5, x:I
    neg-float v7, v4

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v6, v7

    .line 493
    .local v6, y:I
    invoke-direct {p0, p3}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 494
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    invoke-static {v5, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 495
    .local v1, targetX:I
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 496
    .local v2, targetY:I
    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result p3

    .line 498
    const/4 v7, 0x4

    invoke-direct {p0, v1, v2, p3, v7}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 499
    return-void
.end method
