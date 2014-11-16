.class Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraGestureDetector"
.end annotation


# instance fields
.field private final MAX_RADIAN_RATIO:D

.field private mDetecting:Z

.field private mDirection:I

.field private mLastPoint:Landroid/graphics/Point;

.field private mStartPoint:Landroid/graphics/Point;

.field private mUITracked:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/GestureRecognizer;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GestureRecognizer;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-wide v0, 0x3fe0c152382d7365L

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->MAX_RADIAN_RATIO:D

    .line 90
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    .line 91
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDirection:I

    .line 96
    return-void
.end method

.method private checkPoints(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v13, 0xc8

    const/4 v12, 0x2

    const/4 v5, 0x1

    .line 119
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v2, v4, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 120
    .local v2, point:Landroid/graphics/Point;
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDetecting:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-nez v4, :cond_1

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v12, v4, :cond_3

    const-wide v8, 0x40a3880000000000L

    iget-object v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v2, v4}, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->distanceSq(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v10

    cmpg-double v4, v8, v10

    if-gtz v4, :cond_3

    .line 123
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->getDirectionFromLast(Landroid/graphics/Point;)I

    move-result v0

    .line 125
    .local v0, currentDirection:I
    iget v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDirection:I

    if-ne v4, v6, :cond_0

    .line 126
    iput v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDirection:I

    .line 129
    :cond_0
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mUITracked:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDirection:I

    if-eq v4, v0, :cond_2

    .line 130
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDetecting:Z

    .line 167
    .end local v0           #currentDirection:I
    :cond_1
    :goto_0
    return-void

    .line 133
    .restart local v0       #currentDirection:I
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Point;->set(II)V

    .line 138
    .end local v0           #currentDirection:I
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 139
    .local v3, width:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 141
    .local v1, height:I
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mUITracked:Z

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eq v12, v4, :cond_7

    const-wide v8, 0x40c3880000000000L

    iget-object v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v4, v10}, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->distanceSq(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v10

    cmpg-double v4, v8, v10

    if-gtz v4, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isAbleSlideToGallery()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDirection:I

    shr-int/lit8 v4, v4, 0x1

    if-eq v4, v5, :cond_4

    int-to-double v8, v3

    iget-wide v10, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->MAX_RADIAN_RATIO:D

    mul-double/2addr v8, v10

    int-to-double v10, v1

    cmpg-double v4, v8, v10

    if-gez v4, :cond_7

    .line 144
    :cond_4
    if-ge v3, v13, :cond_5

    .line 145
    iget-object v8, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDirection:I

    shr-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_9

    move v4, v5

    :goto_1
    mul-int/lit16 v4, v4, 0xc8

    add-int/2addr v4, v9

    iput v4, v8, Landroid/graphics/Point;->x:I

    .line 147
    const/16 v3, 0xc8

    .line 149
    :cond_5
    if-ge v1, v13, :cond_7

    .line 150
    iget-object v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDirection:I

    rem-int/lit8 v9, v9, 0x2

    if-ne v9, v5, :cond_6

    move v6, v5

    :cond_6
    mul-int/lit16 v6, v6, 0xc8

    add-int/2addr v6, v8

    iput v6, v4, Landroid/graphics/Point;->y:I

    .line 152
    const/16 v1, 0xc8

    .line 157
    :cond_7
    if-gt v13, v3, :cond_8

    if-gt v13, v1, :cond_8

    iget-object v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v4}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 159
    iget-object v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v4}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v4

    iget-object v6, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eq v12, v9, :cond_a

    :goto_2
    invoke-interface {v4, v6, v8, v5}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onSlide(Landroid/graphics/Point;Landroid/graphics/Point;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mUITracked:Z

    .line 163
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eq v12, v4, :cond_1

    .line 164
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDetecting:Z

    goto/16 :goto_0

    :cond_9
    move v4, v6

    .line 145
    goto :goto_1

    :cond_a
    move v5, v7

    .line 159
    goto :goto_2
.end method

.method private getDirectionFromLast(Landroid/graphics/Point;)I
    .locals 4
    .parameter "point"

    .prologue
    const/4 v1, 0x0

    .line 180
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x2

    :goto_0
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public distanceSq(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 8
    .parameter "pt0"
    .parameter "pt1"

    .prologue
    .line 170
    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-double v0, v4

    .line 171
    .local v0, px:D
    iget v4, p2, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-double v2, v4

    .line 172
    .local v2, py:D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    return-wide v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    :pswitch_0
    return-void

    .line 101
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDetecting:Z

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mDirection:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mUITracked:Z

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->mLastPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer$CameraGestureDetector;->checkPoints(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
