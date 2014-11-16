.class public Lcom/android/camera/ui/FaceBeautyPopup;
.super Lcom/android/camera/ui/RulerSettingPopup;
.source "FaceBeautyPopup.java"


# static fields
.field private static final INTELLIGENT_OPTS:[Ljava/lang/String;

.field private static final MANUAL_OPTS:[Ljava/lang/String;


# instance fields
.field private mBeautyValue:Ljava/lang/String;

.field private mCurrentOpts:[Ljava/lang/String;

.field private mIsSimpleMode:Z

.field private mLastModeIndex:I

.field private mSwitcher:Landroid/widget/ImageView;

.field private mSwitcherListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-array v0, v7, [Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0243

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0244

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0245

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0246

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/ui/FaceBeautyPopup;->INTELLIGENT_OPTS:[Ljava/lang/String;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    const-string v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/FaceBeautyPopup;->MANUAL_OPTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RulerSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mLastModeIndex:I

    .line 31
    iput-boolean v0, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mIsSimpleMode:Z

    .line 109
    new-instance v0, Lcom/android/camera/ui/FaceBeautyPopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FaceBeautyPopup$1;-><init>(Lcom/android/camera/ui/FaceBeautyPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mSwitcherListener:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FaceBeautyPopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/FaceBeautyPopup;->getValueIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FaceBeautyPopup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mBeautyValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FaceBeautyPopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mLastModeIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/FaceBeautyPopup;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mLastModeIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, currIndex:I
    if-gez v0, :cond_1

    .line 155
    const/4 v0, 0x0

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    sget-object v1, Lcom/android/camera/ui/FaceBeautyPopup;->MANUAL_OPTS:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 157
    sget-object v1, Lcom/android/camera/ui/FaceBeautyPopup;->MANUAL_OPTS:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected addTextViewTo(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2
    .parameter "parent"
    .parameter "string"

    .prologue
    .line 93
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 97
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamImg:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    return-object v0
.end method

.method protected initCursorPos()V
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method protected initScaler()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mBeautyValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mBeautyValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mBeautyValue:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mBeautyValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_3

    .line 66
    sget-object v1, Lcom/android/camera/ui/FaceBeautyPopup;->INTELLIGENT_OPTS:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mCurrentOpts:[Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mSwitcher:Landroid/widget/ImageView;

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d023d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mCurrentOpts:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mNeedRedrawScale:Z

    .line 77
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 78
    iget v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    .line 79
    iget v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    if-ge v0, v1, :cond_4

    .line 81
    if-eqz v0, :cond_2

    .line 82
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceBeautyPopup;->addBlankViewTo(Landroid/widget/LinearLayout;)V

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mCurrentOpts:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/FaceBeautyPopup;->addTextViewTo(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 70
    .end local v0           #i:I
    :cond_3
    sget-object v1, Lcom/android/camera/ui/FaceBeautyPopup;->MANUAL_OPTS:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mCurrentOpts:[Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d023e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mSwitcher:Landroid/widget/ImageView;

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 86
    .restart local v0       #i:I
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mIsSimpleMode:Z

    if-eqz v1, :cond_0

    .line 87
    const v1, 0x7f0c0040

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceBeautyPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const v1, 0x7f0c0045

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceBeautyPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 54
    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FaceBeautyPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mSwitcher:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mSwitcher:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mSwitcherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-super {p0, p1}, Lcom/android/camera/ui/RulerSettingPopup;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 57
    return-void
.end method

.method protected onCursorUp()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/FaceBeautyPopup;->getValueIndex()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    if-eq v1, v2, :cond_1

    .line 134
    iget v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    .line 136
    .local v0, entryIndex:I
    iget-object v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mBeautyValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mIsSimpleMode:Z

    if-nez v1, :cond_0

    .line 137
    sget-object v1, Lcom/android/camera/ui/FaceBeautyPopup;->MANUAL_OPTS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 140
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v1}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    .line 142
    .end local v0           #entryIndex:I
    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceBeautyPopup;->initScaler()V

    .line 147
    invoke-direct {p0}, Lcom/android/camera/ui/FaceBeautyPopup;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceBeautyPopup;->invalidate()V

    .line 150
    return-void
.end method

.method public setSimpleMode(Z)V
    .locals 0
    .parameter "isSimpleMode"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceBeautyPopup;->mIsSimpleMode:Z

    .line 50
    return-void
.end method
