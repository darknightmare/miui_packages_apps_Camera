.class public Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawRectFTexAttribute.java"


# instance fields
.field public mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public mSourceRectF:Landroid/graphics/RectF;

.field public mTargetRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "texture"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mSourceRectF:Landroid/graphics/RectF;

    .line 13
    iput-object p3, p0, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mTargetRectF:Landroid/graphics/RectF;

    .line 14
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 15
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 16
    return-void
.end method
