.class Lcom/android/camera/ui/FaceBeautyPopup$1;
.super Ljava/lang/Object;
.source "FaceBeautyPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FaceBeautyPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FaceBeautyPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceBeautyPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x61

    .line 112
    const-string v1, ""

    .line 113
    .local v1, newValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    #calls: Lcom/android/camera/ui/FaceBeautyPopup;->getValueIndex()I
    invoke-static {v2}, Lcom/android/camera/ui/FaceBeautyPopup;->access$000(Lcom/android/camera/ui/FaceBeautyPopup;)I

    move-result v0

    .line 115
    .local v0, currentIndex:I
    iget-object v2, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    #getter for: Lcom/android/camera/ui/FaceBeautyPopup;->mBeautyValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/ui/FaceBeautyPopup;->access$100(Lcom/android/camera/ui/FaceBeautyPopup;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    iget-object v3, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    #getter for: Lcom/android/camera/ui/FaceBeautyPopup;->mLastModeIndex:I
    invoke-static {v3}, Lcom/android/camera/ui/FaceBeautyPopup;->access$200(Lcom/android/camera/ui/FaceBeautyPopup;)I

    move-result v3

    iput v3, v2, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    iget v3, v3, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    iget-object v2, v2, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceBeautyPopup;->initScaler()V

    .line 125
    iget-object v2, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/camera/ui/RulerSettingPopup;->mNeedRedrawScale:Z

    .line 126
    iget-object v2, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceBeautyPopup;->invalidate()V

    .line 127
    iget-object v2, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    iget-object v2, v2, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v2}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    .line 128
    iget-object v2, p0, Lcom/android/camera/ui/FaceBeautyPopup$1;->this$0:Lcom/android/camera/ui/FaceBeautyPopup;

    #setter for: Lcom/android/camera/ui/FaceBeautyPopup;->mLastModeIndex:I
    invoke-static {v2, v0}, Lcom/android/camera/ui/FaceBeautyPopup;->access$202(Lcom/android/camera/ui/FaceBeautyPopup;I)I

    .line 129
    return-void

    .line 118
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
