.class public Lcom/android/camera/preferences/ListPreference;
.super Lcom/android/camera/preferences/CameraPreference;
.source "ListPreference.java"


# instance fields
.field private final mDefaultValues:[Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private final mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget-object v3, Lcom/android/camera/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/preferences/ListPreference;->mKey:Ljava/lang/String;

    .line 59
    const/4 v1, 0x1

    .line 60
    .local v1, attrDefaultValue:I
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 61
    .local v2, tv:Landroid/util/TypedValue;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v4, :cond_0

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 68
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/preferences/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 69
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/preferences/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void

    .line 64
    :cond_0
    new-array v3, v4, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 65
    iget-object v3, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto :goto_0
.end method

.method private findSupportedDefaultValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 111
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .end local v1           #j:I
    :goto_2
    return-object v2

    .line 111
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v1           #j:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, len:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 153
    iget-object v5, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 154
    iget-object v5, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v5, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 159
    .local v4, size:I
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 160
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 161
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/camera/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    .end local v0           #i:I
    :goto_1
    return v0

    .line 133
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/preferences/ListPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/preferences/ListPreference;->mKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/preferences/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/ListPreference;->mValue:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/camera/preferences/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected persistStringValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/camera/preferences/ListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method

.method public print()V
    .locals 4

    .prologue
    .line 164
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preference key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 166
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entryValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entries"

    .prologue
    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 88
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .parameter "entryValuesResId"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/preferences/CameraPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 91
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/android/camera/preferences/ListPreference;->mValue:Ljava/lang/String;

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/ListPreference;->persistStringValue(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    .line 130
    return-void
.end method
