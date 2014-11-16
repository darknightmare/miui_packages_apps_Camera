.class public Lcom/android/gallery3d/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method public static extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V
    .locals 7
    .parameter "details"
    .parameter "filePath"

    .prologue
    const/16 v6, 0x67

    .line 133
    new-instance v1, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 135
    .local v1, exif:Lcom/android/gallery3d/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :goto_0
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x66

    invoke-static {p0, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/exif/ExifTag;I)V

    .line 144
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {p0, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/exif/ExifTag;I)V

    .line 146
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {p0, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/exif/ExifTag;I)V

    .line 148
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {p0, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/exif/ExifTag;I)V

    .line 150
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x65

    invoke-static {p0, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/exif/ExifTag;I)V

    .line 152
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x69

    invoke-static {p0, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/exif/ExifTag;I)V

    .line 154
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x6c

    invoke-static {p0, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/exif/ExifTag;I)V

    .line 156
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x68

    invoke-static {p0, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/exif/ExifTag;I)V

    .line 158
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x6b

    invoke-static {p0, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/exif/ExifTag;I)V

    .line 160
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 162
    .local v2, focalTag:Lcom/android/gallery3d/exif/ExifTag;
    if-eqz v2, :cond_0

    .line 163
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsRational(J)Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 165
    const v3, 0x7f0d018c

    invoke-virtual {p0, v6, v3}, Lcom/android/gallery3d/data/MediaDetails;->setUnit(II)V

    .line 167
    :cond_0
    return-void

    .line 136
    .end local v2           #focalTag:Lcom/android/gallery3d/exif/ExifTag;
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "MediaDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find file to read exif: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 138
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/IOException;
    const-string v3, "MediaDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read exif from file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private static setExifData(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/exif/ExifTag;I)V
    .locals 6
    .parameter "details"
    .parameter "tag"
    .parameter "key"

    .prologue
    const-wide/16 v4, 0x0

    .line 111
    if-eqz p1, :cond_1

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    .line 114
    .local v1, type:I
    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 115
    :cond_0
    invoke-virtual {p1, v4, v5}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsRational(J)Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 121
    :goto_0
    const/16 v3, 0x66

    if-ne p2, v3, :cond_4

    .line 122
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails$FlashState;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/gallery3d/data/MediaDetails$FlashState;-><init>(I)V

    .line 124
    .local v0, state:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    invoke-virtual {p0, p2, v0}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 129
    .end local v0           #state:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    .end local v1           #type:I
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 116
    .restart local v1       #type:I
    .restart local v2       #value:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 117
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p1, v4, v5}, Lcom/android/gallery3d/exif/ExifTag;->forceGetValueAsLong(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {p0, p2, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 3
    .parameter "index"
    .parameter "unit"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
