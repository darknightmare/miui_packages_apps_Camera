.class public Lcom/android/camera/ui/SplitLineDrawer;
.super Landroid/view/View;
.source "SplitLineDrawer.java"


# instance fields
.field private mColumnCount:I

.field private mRowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public initialize(II)V
    .locals 0
    .parameter "row"
    .parameter "column"

    .prologue
    .line 27
    iput p2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    .line 28
    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    .line 29
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 33
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 34
    .local v5, paint:Landroid/graphics/Paint;
    const v0, 0x15ffffff

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/ui/SplitLineDrawer;->getWidth()I

    move-result v8

    .local v8, w:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SplitLineDrawer;->getHeight()I

    move-result v6

    .line 36
    .local v6, h:I
    const/4 v7, 0x1

    .local v7, i:I
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    if-ge v7, v0, :cond_0

    .line 37
    mul-int v0, v7, v8

    iget v1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    const/high16 v2, 0x4000

    mul-int v0, v7, v8

    iget v3, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    add-int/lit8 v0, v6, -0x4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 36
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const/4 v7, 0x1

    :goto_1
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-ge v7, v0, :cond_1

    .line 40
    const/high16 v1, 0x4000

    mul-int v0, v7, v6

    iget v2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    div-int/2addr v0, v2

    int-to-float v2, v0

    add-int/lit8 v0, v8, -0x2

    int-to-float v3, v0

    mul-int v0, v7, v6

    iget v4, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    div-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 39
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 42
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    return-void
.end method
