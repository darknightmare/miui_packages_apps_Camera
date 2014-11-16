.class public Lcom/android/camera/PictureSizeManager;
.super Ljava/lang/Object;
.source "PictureSizeManager.java"


# static fields
.field private static sDefaultValue:Ljava/lang/String;

.field private static sEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSensorRatio4_3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findDefalutValue([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "supported"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, defaultValue:Ljava/lang/String;
    sget-boolean v1, Lcom/android/camera/PictureSizeManager;->sSensorRatio4_3:Z

    if-eqz v1, :cond_1

    .line 202
    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    invoke-static {p0}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static findMaxRatio16_9(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    .line 154
    .local v2, maxWidth:I
    const/4 v1, 0x0

    .line 155
    .local v1, maxHeight:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 156
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    .line 158
    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 159
    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 164
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static findMaxRatio16_9([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "supported"

    .prologue
    .line 184
    const/4 v1, -0x1

    .line 185
    .local v1, maxIndex:I
    const/4 v2, 0x0

    .line 186
    .local v2, maxValue:I
    new-instance v3, Lcom/android/camera/PictureSize;

    invoke-direct {v3}, Lcom/android/camera/PictureSize;-><init>()V

    .line 187
    .local v3, pictureSize:Lcom/android/camera/PictureSize;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 188
    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    .line 189
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 191
    move v1, v0

    .line 192
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v2

    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    aget-object v4, p0, v1

    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static findMaxRatio4_3(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    .line 140
    .local v2, maxWidth:I
    const/4 v1, 0x0

    .line 141
    .local v1, maxHeight:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 142
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    .line 144
    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 145
    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 149
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static findMaxRatio4_3([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "supported"

    .prologue
    .line 168
    const/4 v1, -0x1

    .line 169
    .local v1, maxIndex:I
    const/4 v2, 0x0

    .line 170
    .local v2, maxValue:I
    new-instance v3, Lcom/android/camera/PictureSize;

    invoke-direct {v3}, Lcom/android/camera/PictureSize;-><init>()V

    .line 171
    .local v3, pictureSize:Lcom/android/camera/PictureSize;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 172
    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    .line 173
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 175
    move v1, v0

    .line 176
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v2

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    aget-object v4, p0, v1

    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getBestPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;
    .locals 5
    .parameter "candidate"

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/PictureSize;

    invoke-direct {v0}, Lcom/android/camera/PictureSize;-><init>()V

    .line 49
    .local v0, desire:Lcom/android/camera/PictureSize;
    const/4 v3, 0x0

    .line 50
    .local v3, supported:Z
    if-eqz p0, :cond_2

    .line 51
    sget-object v4, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, size:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {v0, v2}, Lcom/android/camera/PictureSize;->setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    move-result-object v4

    .line 70
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #size:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 56
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/camera/PictureSize;->setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    .line 57
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 58
    const/4 v3, 0x1

    .line 59
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntryValues()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    .line 66
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v3, :cond_4

    .line 67
    :cond_3
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaulePictureSize()Lcom/android/camera/PictureSize;

    move-result-object v0

    :cond_4
    move-object v4, v0

    .line 70
    goto :goto_0

    .line 60
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntryValues()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    goto :goto_1
.end method

.method public static getDefaulePictureSize()Lcom/android/camera/PictureSize;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/android/camera/PictureSize;

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefauleValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEntries()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 17
    .local v0, result:[Ljava/lang/String;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    return-object v0
.end method

.method public static getEntryValueList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 23
    .local v0, result:[Ljava/lang/String;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    return-object v0
.end method

.method public static initProfessionalMode(Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 9
    .parameter "res"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v6, 0x7f08000b

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, entries:[Ljava/lang/String;
    const v6, 0x7f08000c

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, entryValues:[Ljava/lang/String;
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    .line 123
    .local v4, pictureSize:Lcom/android/camera/PictureSize;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 124
    aget-object v6, v1, v2

    invoke-virtual {v4, v6}, Lcom/android/camera/PictureSize;->setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 126
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Lcom/android/camera/PictureSize;->width:I

    if-ne v6, v7, :cond_0

    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    iget v7, v4, Lcom/android/camera/PictureSize;->height:I

    if-ne v6, v7, :cond_0

    .line 127
    sget-object v6, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/String;

    aget-object v8, v0, v2

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v6, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/String;

    aget-object v8, v1, v2

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    .end local v5           #size:Landroid/hardware/Camera$Size;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    sget-object v6, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 133
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Not find the desire picture sizes!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 135
    :cond_3
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntryValues()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/PictureSizeManager;->findDefalutValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 136
    return-void
.end method

.method private static initSensorRatio(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, -0x1

    .line 217
    .local v1, maxIndex:I
    const/4 v2, 0x0

    .line 218
    .local v2, maxValue:I
    new-instance v3, Lcom/android/camera/PictureSize;

    invoke-direct {v3}, Lcom/android/camera/PictureSize;-><init>()V

    .line 219
    .local v3, pictureSize:Lcom/android/camera/PictureSize;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 220
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 221
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 222
    move v1, v0

    .line 223
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v2

    .line 219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 227
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/camera/PictureSizeManager;->sSensorRatio4_3:Z

    .line 232
    :goto_1
    return-void

    .line 230
    :cond_2
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/camera/PictureSizeManager;->sSensorRatio4_3:Z

    goto :goto_1
.end method

.method public static initSimpleMode(Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 5
    .parameter "res"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, value0:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 101
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/String;

    const v4, 0x7f0d003d

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, value1:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 107
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/String;

    const v4, 0x7f0d003e

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not find the desire picture sizes!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_2
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntryValues()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->findDefalutValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;ZI)V
    .locals 5
    .parameter "mActivity"
    .parameter
    .parameter "mIsSimpleMode"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 76
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The supported picture size list return from hal is null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_1
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->initSensorRatio(Ljava/util/List;)V

    .line 79
    if-eqz p3, :cond_4

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 82
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    if-gt v3, p3, :cond_2

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_3
    move-object p1, v1

    .line 89
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    :cond_4
    sget-object v3, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 90
    sget-object v3, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 91
    if-eqz p2, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/camera/PictureSizeManager;->initSimpleMode(Landroid/content/res/Resources;Ljava/util/List;)V

    .line 96
    :goto_1
    return-void

    .line 94
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/camera/PictureSizeManager;->initProfessionalMode(Landroid/content/res/Resources;Ljava/util/List;)V

    goto :goto_1
.end method
