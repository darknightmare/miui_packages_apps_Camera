.class final Lcom/android/zxing/DecodeHandlerFactory;
.super Ljava/lang/Object;
.source "DecodeHandlerFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/zxing/DecodeHandler;

.field private final mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mHints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "all"

    .prologue
    const/4 v3, 0x1

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mContext:Landroid/content/Context;

    .line 26
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 27
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHints:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 30
    .local v0, decodeFormats:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v2, Lcom/android/zxing/DecodeFormats;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 31
    if-eqz p2, :cond_0

    .line 32
    sget-object v2, Lcom/android/zxing/DecodeFormats;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 33
    sget-object v2, Lcom/android/zxing/DecodeFormats;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/android/zxing/DecodeHandlerFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/zxing/QRCodeManager;->getViewFinderView()Lcom/android/zxing/ui/ViewFinderView;

    move-result-object v1

    .line 36
    .local v1, viewFinder:Lcom/android/zxing/ui/ViewFinderView;
    if-eqz v1, :cond_1

    .line 37
    iget-object v2, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHints:Ljava/util/Hashtable;

    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    new-instance v4, Lcom/android/zxing/ui/ViewFinderResultPointCallback;

    invoke-direct {v4, v1}, Lcom/android/zxing/ui/ViewFinderResultPointCallback;-><init>(Lcom/android/zxing/ui/ViewFinderView;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHints:Ljava/util/Hashtable;

    sget-object v3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public getHandler()Lcom/android/zxing/DecodeHandler;
    .locals 1

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandler:Lcom/android/zxing/DecodeHandler;

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandler;->cancel()V

    .line 60
    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Lcom/android/zxing/DecodeHandler;->removeMessages(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 62
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DecodeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v1, Lcom/android/zxing/DecodeHandler;

    iget-object v2, p0, Lcom/android/zxing/DecodeHandlerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHints:Ljava/util/Hashtable;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/zxing/DecodeHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/Hashtable;)V

    iput-object v1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandler:Lcom/android/zxing/DecodeHandler;

    .line 55
    iget-object v1, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 56
    return-void
.end method
