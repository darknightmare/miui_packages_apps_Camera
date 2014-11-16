.class public Lcom/android/camera/ui/NumericWheelAdapter;
.super Ljava/lang/Object;
.source "NumericWheelAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/WheelAdapter;


# instance fields
.field private mGapValue:I

.field private mMaxValue:I

.field private mMinValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/NumericWheelAdapter;-><init>(III)V

    .line 17
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "minValue"
    .parameter "maxValue"
    .parameter "gapValue"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mGapValue:I

    .line 20
    iput p1, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMinValue:I

    .line 21
    iput p2, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMaxValue:I

    .line 22
    iput p3, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mGapValue:I

    .line 23
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 27
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/NumericWheelAdapter;->getItemsCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 28
    iget v1, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMinValue:I

    iget v2, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mGapValue:I

    mul-int/2addr v2, p1

    add-int v0, v1, v2

    .line 29
    .local v0, value:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    .end local v0           #value:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemIndexByValue(Ljava/lang/Object;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, pureValue:I
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 51
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMaxValue:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMinValue:I

    if-lt v0, v1, :cond_1

    .line 54
    iget v1, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMinValue:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mGapValue:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 56
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getItemValue(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 36
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/NumericWheelAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 37
    iget v0, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMinValue:I

    iget v1, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mGapValue:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMaxValue:I

    iget v1, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mGapValue:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getMaximumLength()I
    .locals 4

    .prologue
    .line 61
    iget v2, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMaxValue:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMinValue:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    .local v0, max:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 63
    .local v1, maxLen:I
    iget v2, p0, Lcom/android/camera/ui/NumericWheelAdapter;->mMinValue:I

    if-gez v2, :cond_0

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    :cond_0
    return v1
.end method
