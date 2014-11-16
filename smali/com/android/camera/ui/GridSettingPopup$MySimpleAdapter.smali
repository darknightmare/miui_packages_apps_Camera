.class public Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "GridSettingPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GridSettingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MySimpleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GridSettingPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GridSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopup;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 94
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 95
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    instance-of v1, v0, Lcom/android/camera/ui/Rotatable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 103
    check-cast v1, Lcom/android/camera/ui/Rotatable;

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;->this$0:Lcom/android/camera/ui/GridSettingPopup;

    iget v2, v2, Lcom/android/camera/ui/GridSettingPopup;->mOrientation:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 105
    :cond_0
    return-object v0
.end method
