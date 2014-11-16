.class Lcom/android/gallery3d/data/LocalSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalSource$1;,
        Lcom/android/gallery3d/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Lcom/android/camera/CameraAppImpl;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/android/gallery3d/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalSource$IdComparator;-><init>(Lcom/android/gallery3d/data/LocalSource$1;)V

    sput-object v0, Lcom/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraAppImpl;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 58
    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/camera/CameraAppImpl;

    .line 60
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/all"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/*"

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/*"

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/*"

    invoke-virtual {v0, v1, v7}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/item/*"

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/item/*"

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/file"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;
    .locals 7
    .parameter "uri"
    .parameter "defaultType"

    .prologue
    .line 148
    const-string v4, "mediaTypes"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/gallery3d/data/LocalSource;->getMediaType(Ljava/lang/String;I)I

    move-result v3

    .line 151
    .local v3, mediaType:I
    const-string v4, "bucketId"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, bucketId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 154
    .local v2, id:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 159
    packed-switch v3, :pswitch_data_0

    .line 165
    :pswitch_0
    const-string v4, "/local/all"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    :goto_0
    return-object v4

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid bucket id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 v4, 0x0

    goto :goto_0

    .line 161
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_1
    const-string v4, "/local/image"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 163
    :pswitch_2
    const-string v4, "/local/video"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 5
    .parameter "type"
    .parameter "defaultType"

    .prologue
    .line 129
    if-nez p0, :cond_1

    .line 137
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 131
    .restart local p1
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    .local v1, value:I
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    move p1, v1

    .line 133
    goto :goto_0

    .line 134
    .end local v1           #value:I
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;Z)V
    .locals 12
    .parameter
    .parameter "consumer"
    .parameter "isImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    sget-object v10, Lcom/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 233
    .local v6, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 234
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 237
    .local v7, pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, v7, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 239
    .local v9, startId:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v4, v1, 0x1

    .local v4, j:I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 243
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 244
    .local v8, pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v10, v8, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 245
    .local v0, curId:I
    sub-int v10, v0, v9

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_1

    .line 251
    .end local v0           #curId:I
    .end local v8           #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    :cond_0
    iget-object v10, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-static {v10, p3, v2}, Lcom/android/gallery3d/data/LocalAlbum;->getMediaItemById(Lcom/android/camera/CameraAppImpl;ZLjava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 253
    .local v3, items:[Lcom/android/gallery3d/data/MediaItem;
    move v5, v1

    .local v5, k:I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 254
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 255
    .restart local v8       #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget v10, v8, Lcom/android/gallery3d/data/MediaSource$PathId;->id:I

    sub-int v11, v5, v1

    aget-object v11, v3, v11

    invoke-interface {p2, v10, v11}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/android/gallery3d/data/MediaItem;)V

    .line 253
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 248
    .end local v3           #items:[Lcom/android/gallery3d/data/MediaItem;
    .end local v5           #k:I
    .restart local v0       #curId:I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 258
    .end local v0           #curId:I
    .end local v8           #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    .restart local v3       #items:[Lcom/android/gallery3d/data/MediaItem;
    .restart local v5       #k:I
    :cond_2
    move v1, v4

    .line 259
    goto :goto_0

    .line 260
    .end local v2           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #items:[Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v7           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    .end local v9           #startId:I
    :cond_3
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 14
    .parameter "path"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/camera/CameraAppImpl;

    .line 86
    .local v0, app:Lcom/android/camera/CameraAppImpl;
    iget-object v10, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v10, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 124
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 90
    :pswitch_0
    new-instance v10, Lcom/android/gallery3d/data/LocalAlbumSet;

    iget-object v11, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-direct {v10, p1, v11}, Lcom/android/gallery3d/data/LocalAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/camera/CameraAppImpl;)V

    .line 122
    :goto_0
    return-object v10

    .line 92
    :pswitch_1
    new-instance v10, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v11, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-direct {v10, p1, v0, v11, v12}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/camera/CameraAppImpl;IZ)V

    goto :goto_0

    .line 94
    :pswitch_2
    new-instance v10, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v11, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, p1, v0, v11, v12}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/camera/CameraAppImpl;IZ)V

    goto :goto_0

    .line 96
    :pswitch_3
    iget-object v10, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    .line 97
    .local v1, bucketId:I
    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 98
    .local v3, dataManager:Lcom/android/gallery3d/data/DataManager;
    sget-object v2, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 99
    .local v2, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    sget v10, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    if-ne v1, v10, :cond_0

    invoke-static {}, Lcom/android/camera/storage/Storage;->secondaryStorageMounted()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 100
    sget-object v10, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    sget v11, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaSet;

    .line 102
    .local v5, imageSet1:Lcom/android/gallery3d/data/MediaSet;
    sget-object v10, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    sget v11, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSet;

    .line 105
    .local v8, videoSet1:Lcom/android/gallery3d/data/MediaSet;
    sget-object v10, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    sget v11, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/MediaSet;

    .line 107
    .local v6, imageSet2:Lcom/android/gallery3d/data/MediaSet;
    sget-object v10, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    sget v11, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MediaSet;

    .line 109
    .local v9, videoSet2:Lcom/android/gallery3d/data/MediaSet;
    new-instance v10, Lcom/android/gallery3d/data/LocalMergeAlbum;

    const/4 v11, 0x4

    new-array v11, v11, [Lcom/android/gallery3d/data/MediaSet;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    const/4 v12, 0x2

    aput-object v6, v11, v12

    const/4 v12, 0x3

    aput-object v9, v11, v12

    invoke-direct {v10, p1, v2, v11}, Lcom/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 112
    .end local v5           #imageSet1:Lcom/android/gallery3d/data/MediaSet;
    .end local v6           #imageSet2:Lcom/android/gallery3d/data/MediaSet;
    .end local v8           #videoSet1:Lcom/android/gallery3d/data/MediaSet;
    .end local v9           #videoSet2:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    sget-object v10, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaSet;

    .line 114
    .local v4, imageSet:Lcom/android/gallery3d/data/MediaSet;
    sget-object v10, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/MediaSet;

    .line 116
    .local v7, videoSet:Lcom/android/gallery3d/data/MediaSet;
    new-instance v10, Lcom/android/gallery3d/data/LocalMergeAlbum;

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/android/gallery3d/data/MediaSet;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-direct {v10, p1, v2, v11}, Lcom/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    .line 120
    .end local v1           #bucketId:I
    .end local v2           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v3           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v4           #imageSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v7           #videoSet:Lcom/android/gallery3d/data/MediaSet;
    :pswitch_4
    new-instance v10, Lcom/android/gallery3d/data/LocalImage;

    iget-object v11, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/camera/CameraAppImpl;

    iget-object v12, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v12

    invoke-direct {v10, p1, v11, v12}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/camera/CameraAppImpl;I)V

    goto/16 :goto_0

    .line 122
    :pswitch_5
    new-instance v10, Lcom/android/gallery3d/data/LocalVideo;

    iget-object v11, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/camera/CameraAppImpl;

    iget-object v12, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v12

    invoke-direct {v10, p1, v11, v12}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/camera/CameraAppImpl;I)V

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 7
    .parameter "uri"
    .parameter "type"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 172
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    :pswitch_0
    return-object v3

    .line 174
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 175
    .local v1, id:J
    cmp-long v4, v1, v5

    if-ltz v4, :cond_0

    sget-object v4, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4, v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 178
    .end local v1           #id:J
    :pswitch_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 179
    .restart local v1       #id:J
    cmp-long v4, v1, v5

    if-ltz v4, :cond_0

    sget-object v4, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4, v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 182
    .end local v1           #id:J
    :pswitch_3
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 185
    :pswitch_4
    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 188
    :pswitch_5
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 7
    .parameter
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v1, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v5, videoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 212
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 213
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 216
    .local v4, pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v6, v4, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getParent()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 217
    .local v3, parent:Lcom/android/gallery3d/data/Path;
    sget-object v6, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_1

    .line 218
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    sget-object v6, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_0

    .line 220
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    .end local v3           #parent:Lcom/android/gallery3d/data/Path;
    .end local v4           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v1, p2, v6}, Lcom/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    .line 225
    const/4 v6, 0x0

    invoke-direct {p0, v5, p2, v6}, Lcom/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    .line 226
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 291
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 283
    return-void
.end method