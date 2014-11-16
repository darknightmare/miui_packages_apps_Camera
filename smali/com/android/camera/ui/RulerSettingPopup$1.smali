.class Lcom/android/camera/ui/RulerSettingPopup$1;
.super Ljava/lang/Object;
.source "RulerSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RulerSettingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RulerSettingPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RulerSettingPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 42
    .local v0, action:I
    if-nez v0, :cond_1

    .line 43
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v2, v2, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 60
    :cond_0
    :goto_0
    return v6

    .line 45
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 46
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RulerSettingPopup;->filterX(I)I

    move-result v3

    iput v3, v2, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    .line 47
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget v3, v3, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RulerSettingPopup;->indexOfPos(I)I

    move-result v1

    .line 48
    .local v1, index:I
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget v2, v2, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, v3, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget v3, v3, v1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget v3, v3, Lcom/android/camera/ui/RulerSettingPopup;->mCursorMoveStep:I

    if-ge v2, v3, :cond_2

    .line 49
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, v3, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget v3, v3, v1

    iput v3, v2, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    .line 51
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/RulerSettingPopup;->invalidate()V

    goto :goto_0

    .line 53
    .end local v1           #index:I
    :cond_3
    if-ne v0, v6, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RulerSettingPopup;->filterX(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RulerSettingPopup;->indexOfPos(I)I

    move-result v3

    iput v3, v2, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    .line 55
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v2, v2, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 56
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, v3, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget v4, v4, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    aget v3, v3, v4

    iput v3, v2, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    .line 57
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/RulerSettingPopup;->invalidate()V

    .line 58
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/RulerSettingPopup;->onCursorUp()V

    goto :goto_0
.end method
