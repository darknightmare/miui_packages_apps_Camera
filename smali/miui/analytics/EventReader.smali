.class public Lmiui/analytics/EventReader;
.super Ljava/lang/Object;
.source "EventReader.java"


# instance fields
.field private mPersistenceHelper:Lmiui/analytics/PersistenceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lmiui/analytics/PersistenceHelper;

    invoke-direct {v0}, Lmiui/analytics/PersistenceHelper;-><init>()V

    iput-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    invoke-virtual {v0}, Lmiui/analytics/PersistenceHelper;->close()V

    .line 22
    :cond_0
    return-void
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "databaseName"

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    invoke-virtual {v0, p1, p2}, Lmiui/analytics/PersistenceHelper;->readOpen(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/analytics/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lmiui/analytics/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, itemsReg:Ljava/util/List;,"Ljava/util/List<Lmiui/analytics/Item;>;"
    iget-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lmiui/analytics/EventReader;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    invoke-virtual {v0, p1, p2}, Lmiui/analytics/PersistenceHelper;->readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
