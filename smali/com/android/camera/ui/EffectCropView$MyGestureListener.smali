.class Lcom/android/camera/ui/EffectCropView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EffectCropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectCropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/EffectCropView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/EffectCropView;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/ui/EffectCropView$MyGestureListener;->this$0:Lcom/android/camera/ui/EffectCropView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/EffectCropView;Lcom/android/camera/ui/EffectCropView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EffectCropView$MyGestureListener;-><init>(Lcom/android/camera/ui/EffectCropView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 282
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->getInvertFlag()I

    move-result v0

    .line 283
    .local v0, invert:I
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 284
    return v2

    .line 283
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 290
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 291
    .local v1, y:I
    iget-object v2, p0, Lcom/android/camera/ui/EffectCropView$MyGestureListener;->this$0:Lcom/android/camera/ui/EffectCropView;

    #getter for: Lcom/android/camera/ui/EffectCropView;->mCropBounds:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/android/camera/ui/EffectCropView;->access$100(Lcom/android/camera/ui/EffectCropView;)Landroid/graphics/RectF;

    move-result-object v2

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/camera/ui/EffectCropView$MyGestureListener;->this$0:Lcom/android/camera/ui/EffectCropView;

    #getter for: Lcom/android/camera/ui/EffectCropView;->mActivty:Lcom/android/camera/ActivityBase;
    invoke-static {v2}, Lcom/android/camera/ui/EffectCropView;->access$200(Lcom/android/camera/ui/EffectCropView;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getModule()Lcom/android/camera/module/Module;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0, v1}, Lcom/android/camera/module/Module;->onSingleTapUp(Landroid/view/View;II)V

    .line 294
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
