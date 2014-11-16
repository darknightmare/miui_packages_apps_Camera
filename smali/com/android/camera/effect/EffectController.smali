.class public Lcom/android/camera/effect/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectController$SurfaceCache;
    }
.end annotation


# static fields
.field public static final BUFFER_WIDTH:I

.field public static final SURFACE_WIDTH:I

.field private static sInstance:Lcom/android/camera/effect/EffectController;


# instance fields
.field private EFFECT_SET:[Ljava/lang/String;

.field public mBlockCache:Ljava/nio/IntBuffer;

.field public mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

.field public volatile mDisplayEndIndex:I

.field public volatile mDisplayShow:Z

.field public volatile mDisplayStartIndex:I

.field private mEffectEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectIndex:I

.field private mInvertFlag:I

.field private mNameToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedRectSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedScaleDownSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mPreference:Landroid/content/SharedPreferences;

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/android/camera/effect/EffectController;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController;-><init>()V

    sput-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    .line 59
    const/high16 v0, 0x42a0

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    .line 60
    sget v0, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mRectF:Landroid/graphics/RectF;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    .line 70
    iput-boolean v2, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    .line 71
    iput v2, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    .line 72
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    .line 86
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "shader_effect_weight"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mPreference:Landroid/content/SharedPreferences;

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->initialize()V

    .line 89
    return-void
.end method

.method private addEntryItem(ILjava/lang/String;I)V
    .locals 2
    .parameter "strId"
    .parameter "name"
    .parameter "id"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mNameToId:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public static getInstance()Lcom/android/camera/effect/EffectController;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .parameter "strId"

    .prologue
    .line 334
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWeight(Ljava/lang/String;)I
    .locals 2
    .parameter "effectName"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mPreference:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private initEffectWeight()V
    .locals 15

    .prologue
    .line 97
    const/16 v12, 0xe

    new-array v1, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "gaussianblur"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "earlybird"

    aput-object v13, v1, v12

    const/4 v12, 0x2

    const-string v13, "nashvile"

    aput-object v13, v1, v12

    const/4 v12, 0x3

    const-string v13, "mono"

    aput-object v13, v1, v12

    const/4 v12, 0x4

    const-string v13, "seventy"

    aput-object v13, v1, v12

    const/4 v12, 0x5

    const-string v13, "vivid"

    aput-object v13, v1, v12

    const/4 v12, 0x6

    const-string v13, "mosaic"

    aput-object v13, v1, v12

    const/4 v12, 0x7

    const-string v13, "jstyle"

    aput-object v13, v1, v12

    const/16 v12, 0x8

    const-string v13, "brannan"

    aput-object v13, v1, v12

    const/16 v12, 0x9

    const-string v13, "xproii"

    aput-object v13, v1, v12

    const/16 v12, 0xa

    const-string v13, "yesteryear"

    aput-object v13, v1, v12

    const/16 v12, 0xb

    const-string v13, "fisheye"

    aput-object v13, v1, v12

    const/16 v12, 0xc

    const-string v13, "mirror"

    aput-object v13, v1, v12

    const/16 v12, 0xd

    const-string v13, "sketch"

    aput-object v13, v1, v12

    .line 100
    .local v1, defaultArray:[Ljava/lang/String;
    const/16 v12, 0xe

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "gaussianblur"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "earlybird"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "nashvile"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "mono"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "seventy"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const-string v14, "vivid"

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "mosaic"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const-string v14, "jstyle"

    aput-object v14, v12, v13

    const/16 v13, 0x8

    const-string v14, "brannan"

    aput-object v14, v12, v13

    const/16 v13, 0x9

    const-string v14, "xproii"

    aput-object v14, v12, v13

    const/16 v13, 0xa

    const-string v14, "yesteryear"

    aput-object v14, v12, v13

    const/16 v13, 0xb

    const-string v14, "fisheye"

    aput-object v14, v12, v13

    const/16 v13, 0xc

    const-string v14, "mirror"

    aput-object v14, v12, v13

    const/16 v13, 0xd

    const-string v14, "sketch"

    aput-object v14, v12, v13

    iput-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    .line 104
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v11, weightMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v4, v0, v2

    .line 106
    .local v4, key:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/camera/effect/EffectController;->getWeight(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v4           #key:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    .line 109
    .local v10, weight:I
    const/4 v9, 0x0

    .line 110
    .local v9, tmpMaxIndex:I
    const/4 v6, 0x0

    .line 112
    .local v6, ordered:I
    const/4 v6, 0x0

    :goto_1
    iget-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    array-length v12, v12

    if-ge v6, v12, :cond_4

    .line 113
    move v9, v6

    .line 114
    iget-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 115
    add-int/lit8 v3, v6, 0x1

    .local v3, j:I
    :goto_2
    iget-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    array-length v12, v12

    if-ge v3, v12, :cond_2

    .line 116
    iget-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v12, v10, :cond_1

    .line 117
    iget-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 118
    move v9, v3

    .line 115
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 121
    :cond_2
    if-eq v9, v6, :cond_3

    .line 122
    iget-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    aget-object v8, v12, v6

    .line 123
    .local v8, tmp:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    iget-object v13, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    aget-object v13, v13, v9

    aput-object v13, v12, v6

    .line 124
    iget-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    aput-object v8, v12, v9

    .line 126
    .end local v8           #tmp:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x1

    if-ne v10, v12, :cond_6

    .line 130
    .end local v3           #j:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_3
    array-length v12, v1

    if-ge v3, v12, :cond_7

    .line 131
    aget-object v12, v1, v3

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_5

    array-length v12, v1

    if-ge v6, v12, :cond_5

    .line 132
    iget-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #ordered:I
    .local v7, ordered:I
    aget-object v13, v1, v3

    aput-object v13, v12, v6

    move v6, v7

    .line 130
    .end local v7           #ordered:I
    .restart local v6       #ordered:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 127
    :cond_6
    iget-object v12, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    aget-object v12, v12, v6

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 135
    :cond_7
    return-void
.end method


# virtual methods
.method public addWeight(I)V
    .locals 5
    .parameter "effectId"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->mapEffectIdToName(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, effectName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mPreference:Landroid/content/SharedPreferences;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 141
    .local v2, oldValue:I
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    return-void
.end method

.method public allocateCache()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    if-nez v1, :cond_0

    .line 162
    const/16 v1, 0xf

    new-array v1, v1, [Lcom/android/camera/effect/EffectController$SurfaceCache;

    iput-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    .line 163
    sget v1, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget v2, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/EffectController;->mBlockCache:Ljava/nio/IntBuffer;

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    new-instance v2, Lcom/android/camera/effect/EffectController$SurfaceCache;

    invoke-direct {v2}, Lcom/android/camera/effect/EffectController$SurfaceCache;-><init>()V

    aput-object v2, v1, v0

    .line 167
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/camera/effect/EffectController$SurfaceCache;->mUpdateTime:J

    .line 168
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    aget-object v1, v1, v0

    sget v2, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget v3, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/effect/EffectController$SurfaceCache;->mCache:Ljava/nio/IntBuffer;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public getBlockCache()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mBlockCache:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getCache(I)Lcom/android/camera/effect/EffectController$SurfaceCache;
    .locals 1
    .parameter "index"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    aget-object v0, v0, p1

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayCount()I
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDisplayEndIndex()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    return v0
.end method

.method public getDisplayStartIndex()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    return v0
.end method

.method public getEffect()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    return v0
.end method

.method public getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 10
    .parameter "canvas"

    .prologue
    .line 345
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v7

    if-nez v7, :cond_1

    .line 346
    const/4 v6, 0x0

    .line 530
    :cond_0
    return-object v6

    .line 349
    :cond_1
    new-instance v6, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v6, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 350
    .local v6, renderGroup:Lcom/android/camera/effect/renders/RenderGroup;
    if-nez p1, :cond_4

    const/4 v0, 0x1

    .line 351
    .local v0, addEntry:Z
    :goto_0
    const/4 v3, -0x1

    .line 352
    .local v3, id:I
    if-nez p1, :cond_2

    .line 353
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    .line 354
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    .line 355
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    .line 356
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    .line 357
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mNameToId:Ljava/util/HashMap;

    .line 359
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    const v8, 0x7f0d0092

    invoke-direct {p0, v8}, Lcom/android/camera/effect/EffectController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    const-string v8, "normal"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mNameToId:Ljava/util/HashMap;

    const-string v8, "normal"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const/4 v0, 0x1

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->EFFECT_SET:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v4, v1, v2

    .line 368
    .local v4, key:Ljava/lang/String;
    const-string v7, "gaussianblur"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 369
    add-int/lit8 v3, v3, 0x1

    .line 370
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    if-eqz v0, :cond_5

    .line 372
    const v7, 0x7f0d00a1

    const-string v8, "gaussianblur"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    .line 365
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    .end local v0           #addEntry:Z
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #id:I
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #len$:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    .restart local v0       #addEntry:Z
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #id:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #len$:I
    :cond_5
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v8, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v8, p1, v3}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    new-instance v9, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v9, p1, v3}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-direct {v7, p1, v8, v9}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_2

    .line 382
    :cond_6
    const-string v7, "earlybird"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 383
    add-int/lit8 v3, v3, 0x1

    .line 384
    if-eqz v0, :cond_7

    .line 385
    const v7, 0x7f0d009d

    const-string v8, "earlybird"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto :goto_2

    .line 387
    :cond_7
    new-instance v7, Lcom/android/camera/effect/renders/EarlyBirdEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/EarlyBirdEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_2

    .line 393
    :cond_8
    const-string v7, "nashvile"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 394
    add-int/lit8 v3, v3, 0x1

    .line 395
    if-eqz v0, :cond_9

    .line 396
    const v7, 0x7f0d009e

    const-string v8, "nashvile"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto :goto_2

    .line 398
    :cond_9
    new-instance v7, Lcom/android/camera/effect/renders/NashvileEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/NashvileEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_2

    .line 404
    :cond_a
    const-string v7, "mono"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 405
    add-int/lit8 v3, v3, 0x1

    .line 406
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    if-eqz v0, :cond_b

    .line 408
    const v7, 0x7f0d0093

    const-string v8, "mono"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto :goto_2

    .line 410
    :cond_b
    new-instance v7, Lcom/android/camera/effect/renders/GrayEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/GrayEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_2

    .line 416
    :cond_c
    const-string v7, "seventy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 417
    add-int/lit8 v3, v3, 0x1

    .line 418
    if-eqz v0, :cond_d

    .line 419
    const v7, 0x7f0d0098

    const-string v8, "seventy"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 421
    :cond_d
    new-instance v7, Lcom/android/camera/effect/renders/SeventyEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/SeventyEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2

    .line 428
    :cond_e
    const-string v7, "vivid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 429
    add-int/lit8 v3, v3, 0x1

    .line 430
    if-eqz v0, :cond_f

    .line 431
    const v7, 0x7f0d0094

    const-string v8, "vivid"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 433
    :cond_f
    new-instance v7, Lcom/android/camera/effect/renders/VividEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/VividEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2

    .line 439
    :cond_10
    const-string v7, "mosaic"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 440
    add-int/lit8 v3, v3, 0x1

    .line 441
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    if-eqz v0, :cond_11

    .line 443
    const v7, 0x7f0d009c

    const-string v8, "mosaic"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 445
    :cond_11
    new-instance v7, Lcom/android/camera/effect/renders/MosaicEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/MosaicEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2

    .line 451
    :cond_12
    const-string v7, "jstyle"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 452
    add-int/lit8 v3, v3, 0x1

    .line 453
    if-eqz v0, :cond_13

    .line 454
    const v7, 0x7f0d009a

    const-string v8, "jstyle"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 456
    :cond_13
    new-instance v7, Lcom/android/camera/effect/renders/JStyleEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/JStyleEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2

    .line 462
    :cond_14
    const-string v7, "brannan"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 463
    add-int/lit8 v3, v3, 0x1

    .line 464
    if-eqz v0, :cond_15

    .line 465
    const v7, 0x7f0d0096

    const-string v8, "brannan"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 467
    :cond_15
    new-instance v7, Lcom/android/camera/effect/renders/BrannanEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/BrannanEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2

    .line 473
    :cond_16
    const-string v7, "xproii"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 474
    add-int/lit8 v3, v3, 0x1

    .line 475
    if-eqz v0, :cond_17

    .line 476
    const v7, 0x7f0d009b

    const-string v8, "xproii"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 478
    :cond_17
    new-instance v7, Lcom/android/camera/effect/renders/XProIIEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/XProIIEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2

    .line 484
    :cond_18
    const-string v7, "yesteryear"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 485
    add-int/lit8 v3, v3, 0x1

    .line 486
    if-eqz v0, :cond_19

    .line 487
    const v7, 0x7f0d0095

    const-string v8, "yesteryear"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 489
    :cond_19
    new-instance v7, Lcom/android/camera/effect/renders/YesteryearEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/YesteryearEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2

    .line 495
    :cond_1a
    const-string v7, "fisheye"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 496
    add-int/lit8 v3, v3, 0x1

    .line 497
    if-eqz v0, :cond_1b

    .line 498
    const v7, 0x7f0d0099

    const-string v8, "fisheye"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 500
    :cond_1b
    new-instance v7, Lcom/android/camera/effect/renders/FishEyeEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/FishEyeEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2

    .line 506
    :cond_1c
    const-string v7, "mirror"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 507
    add-int/lit8 v3, v3, 0x1

    .line 508
    if-eqz v0, :cond_1d

    .line 509
    const v7, 0x7f0d00a0

    const-string v8, "mirror"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 511
    :cond_1d
    new-instance v7, Lcom/android/camera/effect/renders/MirrorEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/MirrorEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2

    .line 517
    :cond_1e
    const-string v7, "sketch"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 518
    add-int/lit8 v3, v3, 0x1

    .line 519
    if-eqz v0, :cond_1f

    .line 520
    const v7, 0x7f0d0097

    const-string v8, "sketch"

    invoke-direct {p0, v7, v8, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 522
    :cond_1f
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v8, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v8, p1, v3}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    new-instance v9, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v9, p1, v3}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-direct {v7, p1, v8, v9}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2
.end method

.method public getEffectRectF()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 199
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 200
    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 205
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 206
    return-object v0
.end method

.method public getInvertFlag()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mInvertFlag:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return v0
.end method

.method public hasEffect()Z
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initEffectWeight()V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/camera/effect/renders/RenderGroup;

    .line 94
    return-void
.end method

.method public isDisplayShow()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    return v0
.end method

.method public isNeedRect()Z
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result v0

    return v0
.end method

.method public isNeedRect(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 308
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 310
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 311
    const/4 v2, 0x1

    .line 315
    .end local v0           #i:Ljava/lang/Integer;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public mapEffectIdToName(I)Ljava/lang/String;
    .locals 6
    .parameter "id"

    .prologue
    .line 221
    const-string v4, "normal"

    .line 222
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNameToId:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, IntgerId:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 225
    .local v3, keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #IntgerId:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 227
    .restart local v0       #IntgerId:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 228
    move-object v4, v2

    .line 233
    .end local v0           #IntgerId:Ljava/lang/Integer;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-object v4
.end method

.method public mapEffectNameToId(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 210
    const/4 v1, -0x1

    .line 211
    .local v1, result:I
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNameToId:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 213
    .local v0, id:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 217
    .end local v0           #id:Ljava/lang/Integer;
    :cond_0
    return v1
.end method

.method public needDownScale(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 323
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 325
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 326
    const/4 v2, 0x1

    .line 330
    .end local v0           #i:Ljava/lang/Integer;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    .line 275
    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mBlockCache:Ljava/nio/IntBuffer;

    .line 276
    return-void
.end method

.method public restoretWeight()V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method

.method public setDisplayEndtIndex(I)V
    .locals 0
    .parameter "end"

    .prologue
    .line 257
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    .line 258
    return-void
.end method

.method public setDisplayShow(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->allocateCache()V

    .line 263
    return-void
.end method

.method public setDisplayStartIndex(I)V
    .locals 0
    .parameter "start"

    .prologue
    .line 253
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    .line 254
    return-void
.end method

.method public setEffect(I)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    .line 180
    return-void
.end method

.method public setEffectRect(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "rectF"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 280
    return-void
.end method

.method public setInvertFlag(I)V
    .locals 0
    .parameter "invert"

    .prologue
    .line 287
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mInvertFlag:I

    .line 288
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 295
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    .line 296
    return-void
.end method
