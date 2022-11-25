.class public Lcom/keepassdroid/database/edit/UpdateEntry;
.super Lcom/keepassdroid/database/edit/RunnableOnFinish;
.source "UpdateEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private mDb:Lcom/keepassdroid/Database;

.field private mNewE:Lcom/keepassdroid/database/PwEntry;

.field private mOldE:Lcom/keepassdroid/database/PwEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 0

    .line 35
    invoke-direct {p0, p5}, Lcom/keepassdroid/database/edit/RunnableOnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 37
    iput-object p2, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mDb:Lcom/keepassdroid/Database;

    .line 38
    iput-object p3, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mOldE:Lcom/keepassdroid/database/PwEntry;

    .line 39
    iput-object p4, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mNewE:Lcom/keepassdroid/database/PwEntry;

    .line 40
    iput-object p1, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->ctx:Landroid/content/Context;

    .line 44
    invoke-virtual {p3}, Lcom/keepassdroid/database/PwEntry;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwEntry;

    .line 46
    new-instance p2, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;

    invoke-direct {p2, p0, p1, p5}, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;-><init>(Lcom/keepassdroid/database/edit/UpdateEntry;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/edit/OnFinish;)V

    iput-object p2, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/database/edit/UpdateEntry;)Lcom/keepassdroid/database/PwEntry;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mNewE:Lcom/keepassdroid/database/PwEntry;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keepassdroid/database/edit/UpdateEntry;)Lcom/keepassdroid/Database;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mDb:Lcom/keepassdroid/Database;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keepassdroid/database/edit/UpdateEntry;)Lcom/keepassdroid/database/PwEntry;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mOldE:Lcom/keepassdroid/database/PwEntry;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mOldE:Lcom/keepassdroid/database/PwEntry;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mNewE:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwEntry;->assign(Lcom/keepassdroid/database/PwEntry;)V

    .line 53
    iget-object v0, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mOldE:Lcom/keepassdroid/database/PwEntry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/keepassdroid/database/PwEntry;->touch(ZZ)V

    .line 57
    new-instance v0, Lcom/keepassdroid/database/edit/SaveDB;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mDb:Lcom/keepassdroid/Database;

    iget-object v3, p0, Lcom/keepassdroid/database/edit/UpdateEntry;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    invoke-direct {v0, v1, v2, v3}, Lcom/keepassdroid/database/edit/SaveDB;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 58
    invoke-virtual {v0}, Lcom/keepassdroid/database/edit/SaveDB;->run()V

    return-void
.end method
