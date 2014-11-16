.class public Lcom/android/camera/ui/AutoExposureBar;
.super Landroid/widget/LinearLayout;
.source "AutoExposureBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/SeekBar$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AutoExposureBar$OnSettingChangedListener;
    }
.end annotation


# instance fields
.field private mAutoButton:Landroid/widget/ImageView;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mIndex:I

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/android/camera/ui/AutoExposureBar$OnSettingChangedListener;

.field private mSeekBar:Lcom/android/camera/ui/SeekBar;

.field private mSeekBarLeftText:Landroid/widget/TextView;

.field private mSeekBarRightText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private persistStringValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 92
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/camera/ui/AutoExposureBar;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 116
    iget-object v2, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/camera/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    .end local v0           #i:I
    :goto_1
    return v0

    .line 115
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public initialize(Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "entries"
    .parameter "entriesValues"
    .parameter "title"
    .parameter "value"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/ui/AutoExposureBar;->mKey:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntries:[Ljava/lang/CharSequence;

    .line 55
    iput-object p3, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntryValues:[Ljava/lang/CharSequence;

    .line 56
    iget-object v2, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v2

    .line 57
    .local v0, entriesLen:I
    iget-object v2, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .line 58
    .local v1, valuesLen:I
    if-ne v0, v1, :cond_0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 59
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "AutoExposureBar initialize fail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_1
    invoke-virtual {p0, p5}, Lcom/android/camera/ui/AutoExposureBar;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/AutoExposureBar;->mIndex:I

    .line 62
    iget-object v2, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/SeekBar;->setMaxValue(I)V

    .line 63
    iget-object v2, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBarLeftText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntries:[Ljava/lang/CharSequence;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBarRightText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntries:[Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, p0, Lcom/android/camera/ui/AutoExposureBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0, p5}, Lcom/android/camera/ui/AutoExposureBar;->setValue(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mAutoButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 100
    iget v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mIndex:I

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->setValueIndex(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/AutoExposureBar;->onSettingChanged()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SeekBar;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->setValueIndex(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/ui/AutoExposureBar;->onSettingChanged()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 124
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mTitle:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mValueText:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mAutoButton:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBarLeftText:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBarRightText:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/SeekBar;->setOnValueChangedListener(Lcom/android/camera/ui/SeekBar$OnValueChangedListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mAutoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mListener:Lcom/android/camera/ui/AutoExposureBar$OnSettingChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mListener:Lcom/android/camera/ui/AutoExposureBar$OnSettingChangedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/AutoExposureBar$OnSettingChangedListener;->onSettingChanged()V

    .line 89
    :cond_0
    return-void
.end method

.method public onValueChanged(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mIndex:I

    add-int/lit8 v1, p1, 0x1

    if-eq v0, v1, :cond_0

    .line 42
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mIndex:I

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntryValues:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/camera/ui/AutoExposureBar;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->setValue(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/AutoExposureBar;->onSettingChanged()V

    .line 46
    :cond_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/AutoExposureBar$OnSettingChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/ui/AutoExposureBar;->mListener:Lcom/android/camera/ui/AutoExposureBar$OnSettingChangedListener;

    .line 71
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AutoExposureBar;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mIndex:I

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mValueText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntries:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/camera/ui/AutoExposureBar;->mIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mIndex:I

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBar;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mAutoButton:Landroid/widget/ImageView;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntryValues:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/camera/ui/AutoExposureBar;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->persistStringValue(Ljava/lang/String;)V

    .line 85
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBar;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    iget v1, p0, Lcom/android/camera/ui/AutoExposureBar;->mIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBar;->setValue(I)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mAutoButton:Landroid/widget/ImageView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/AutoExposureBar;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AutoExposureBar;->setValue(Ljava/lang/String;)V

    .line 112
    return-void
.end method
