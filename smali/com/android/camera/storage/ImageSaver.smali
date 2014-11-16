.class public Lcom/android/camera/storage/ImageSaver;
.super Ljava/lang/Thread;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ImageSaver$SaveRequest;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mHandler:Landroid/os/Handler;

.field private mIsImageCaptureIntent:Z

.field private mLastImageUri:Landroid/net/Uri;

.field private mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/storage/ImageSaver$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnail:Ljava/lang/Runnable;

.field private mUpdateThumbnailLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V
    .locals 1
    .parameter "activity"
    .parameter "handler"
    .parameter "isImageCaptureIntent"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/android/camera/storage/ImageSaver$1;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$1;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    .line 43
    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    .line 44
    iput-boolean p3, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->start()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->updateThumbnail()V

    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZLjava/lang/String;)V
    .locals 19
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "date"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "exif"
    .parameter "orientation"
    .parameter "isHide"
    .parameter "isMap"
    .parameter "oldTitle"

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->addSecureNum(I)V

    .line 183
    if-eqz p2, :cond_3

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    move-object/from16 v4, p1

    move-object/from16 v5, p9

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move/from16 v9, p10

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p13

    invoke-static/range {v3 .. v12}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z

    .line 190
    :goto_0
    if-eqz p2, :cond_6

    .line 192
    monitor-enter p0

    .line 200
    if-eqz p1, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_4

    if-eqz p9, :cond_0

    invoke-virtual/range {p9 .. p9}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v3

    if-nez v3, :cond_4

    :cond_0
    const/16 v16, 0x1

    .line 203
    .local v16, needThumbnail:Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v16, :cond_1

    .line 207
    move/from16 v0, p7

    int-to-double v3, v0

    move/from16 v0, p8

    int-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4080

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v17, v0

    .line 208
    .local v17, ratio:I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v15

    .line 209
    .local v15, inSampleSize:I
    if-eqz p12, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p10

    invoke-static {v3, v0, v1, v4}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v18

    .line 212
    .local v18, t:Lcom/android/camera/Thumbnail;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v4

    .line 215
    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    .end local v15           #inSampleSize:I
    .end local v17           #ratio:I
    .end local v18           #t:Lcom/android/camera/Thumbnail;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 223
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    .line 227
    .end local v16           #needThumbnail:Z
    :goto_3
    return-void

    .line 186
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v12, 0x0

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p10

    move-object/from16 v9, p1

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-static/range {v3 .. v14}, Lcom/android/camera/storage/Storage;->addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZ)Landroid/net/Uri;

    move-result-object p2

    goto/16 :goto_0

    .line 200
    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 209
    .restart local v15       #inSampleSize:I
    .restart local v16       #needThumbnail:Z
    .restart local v17       #ratio:I
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p10

    move-object/from16 v2, p2

    invoke-static {v0, v1, v15, v2, v3}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v18

    goto :goto_2

    .line 217
    .restart local v18       #t:Lcom/android/camera/Thumbnail;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 225
    .end local v15           #inSampleSize:I
    .end local v16           #needThumbnail:Z
    .end local v17           #ratio:I
    .end local v18           #t:Lcom/android/camera/Thumbnail;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->addSecureNum(I)V

    goto :goto_3
.end method

.method private updateThumbnail()V
    .locals 4

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 169
    .local v0, t:Lcom/android/camera/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 170
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 175
    :cond_0
    return-void

    .line 170
    .end local v0           #t:Lcom/android/camera/Thumbnail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 80
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0

    .line 85
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZ)V
    .locals 2
    .parameter "data"
    .parameter "title"
    .parameter "date"
    .parameter "uri"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "exif"
    .parameter "orientation"
    .parameter "isHide"
    .parameter "isMapFile"

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    invoke-direct {v0}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>()V

    .line 54
    .local v0, r:Lcom/android/camera/storage/ImageSaver$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    .line 55
    iput-wide p3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->date:J

    .line 56
    iput-object p5, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    .line 57
    iput-object p2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    .line 58
    if-nez p6, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    .line 59
    iput p7, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    .line 60
    iput p8, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    .line 61
    iput-object p9, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 62
    iput p10, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    .line 63
    iput-boolean p11, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isHide:Z

    .line 64
    iput-boolean p12, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    .line 66
    return-void

    .line 58
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p6}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->waitDone()V

    .line 143
    monitor-enter p0

    .line 144
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 146
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :goto_0
    return-void

    .line 146
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 95
    :goto_0
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    return-void

    .line 104
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 110
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    .line 111
    .local v14, r:Lcom/android/camera/storage/ImageSaver$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    iget-object v0, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    iput-object v0, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    .line 117
    :cond_2
    iget-object v1, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    iget-object v2, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    iget-wide v4, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->date:J

    iget-object v6, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    iget v7, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    iget v8, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    iget-object v9, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    iget v10, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    iget-boolean v11, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isHide:Z

    iget-boolean v12, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    iget-object v13, v14, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/camera/storage/ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZLjava/lang/String;)V

    .line 119
    monitor-enter p0

    .line 120
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 105
    .end local v14           #r:Lcom/android/camera/storage/ImageSaver$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0

    .line 136
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->updateThumbnail()V

    .line 138
    return-void

    .line 136
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
