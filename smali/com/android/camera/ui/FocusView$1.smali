.class Lcom/android/camera/ui/FocusView$1;
.super Landroid/os/Handler;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4316

    const-wide/16 v9, 0x14

    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    .line 264
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mStartTime:J
    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$400(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 268
    .local v0, duration:J
    const-wide/16 v3, 0xc8

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 271
    long-to-float v3, v0

    const/high16 v4, 0x4348

    div-float v2, v3, v4

    .line 272
    .local v2, t:F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    sub-float v5, v7, v2

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    sget v7, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$502(Lcom/android/camera/ui/FocusView;I)I

    .line 273
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    mul-float v4, v11, v2

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$602(Lcom/android/camera/ui/FocusView;I)I

    .line 274
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 275
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #calls: Lcom/android/camera/ui/FocusView;->processPrameterIfNeeded(ZZ)V
    invoke-static {v3, v8, v12}, Lcom/android/camera/ui/FocusView;->access$800(Lcom/android/camera/ui/FocusView;ZZ)V

    goto :goto_0

    .line 280
    .end local v0           #duration:J
    .end local v2           #t:F
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 281
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mState:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$900(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mSuccessTime:J
    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$1000(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 283
    .restart local v0       #duration:J
    const-wide/16 v3, 0x82

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 284
    long-to-float v3, v0

    const/high16 v4, 0x4302

    div-float v2, v3, v4

    .line 285
    .restart local v2       #t:F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1200()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1300()I

    move-result v5

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1200()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mSmallRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1102(Lcom/android/camera/ui/FocusView;I)I

    .line 286
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_MIN_RADIUS:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$502(Lcom/android/camera/ui/FocusView;I)I

    .line 287
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x64

    #setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$602(Lcom/android/camera/ui/FocusView;I)I

    .line 288
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 289
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #calls: Lcom/android/camera/ui/FocusView;->processPrameterIfNeeded(ZZ)V
    invoke-static {v3, v8, v8}, Lcom/android/camera/ui/FocusView;->access$800(Lcom/android/camera/ui/FocusView;ZZ)V

    .line 290
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->isDraw()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    .line 292
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 298
    .end local v0           #duration:J
    .end local v2           #t:F
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 299
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mState:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$900(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mFailTime:J
    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$1600(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 301
    .restart local v0       #duration:J
    const-wide/16 v3, 0x140

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 303
    const-wide/16 v3, 0x12c

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 304
    const-wide/16 v0, 0x12c

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x4396

    div-float/2addr v4, v5

    #calls: Lcom/android/camera/ui/FocusView;->getInterpolation(F)F
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1700(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 307
    .restart local v2       #t:F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/high16 v4, 0x4334

    sub-float v5, v7, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mSmallAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1802(Lcom/android/camera/ui/FocusView;I)I

    .line 308
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2000()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2000()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1902(Lcom/android/camera/ui/FocusView;I)I

    .line 309
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2100()I

    move-result v5

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$502(Lcom/android/camera/ui/FocusView;I)I

    .line 310
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sub-float v4, v7, v2

    mul-float/2addr v4, v11

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$602(Lcom/android/camera/ui/FocusView;I)I

    .line 311
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #calls: Lcom/android/camera/ui/FocusView;->processPrameterIfNeeded(ZZ)V
    invoke-static {v3, v8, v12}, Lcom/android/camera/ui/FocusView;->access$800(Lcom/android/camera/ui/FocusView;ZZ)V

    goto/16 :goto_0

    .line 318
    .end local v0           #duration:J
    .end local v2           #t:F
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->isDraw()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #calls: Lcom/android/camera/ui/FocusView;->clearMessages()V
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2200(Lcom/android/camera/ui/FocusView;)V

    .line 320
    const/4 v3, 0x5

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 322
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #calls: Lcom/android/camera/ui/FocusView;->reset()V
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2300(Lcom/android/camera/ui/FocusView;)V

    goto/16 :goto_0

    .line 327
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mState:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$900(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 328
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1300()I

    move-result v4

    #setter for: Lcom/android/camera/ui/FocusView;->mSmallRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1102(Lcom/android/camera/ui/FocusView;I)I

    .line 329
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_MIN_RADIUS:I

    #setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$502(Lcom/android/camera/ui/FocusView;I)I

    .line 330
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x64

    #setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$602(Lcom/android/camera/ui/FocusView;I)I

    .line 331
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #calls: Lcom/android/camera/ui/FocusView;->processPrameterIfNeeded(ZZ)V
    invoke-static {v3, v8, v8}, Lcom/android/camera/ui/FocusView;->access$800(Lcom/android/camera/ui/FocusView;ZZ)V

    .line 332
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->isDraw()Z

    move-result v3

    if-nez v3, :cond_3

    .line 333
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    .line 335
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    goto/16 :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
