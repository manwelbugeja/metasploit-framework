.class public Lcom/keepassdroid/database/edit/SaveDB;
.super Lcom/keepassdroid/database/edit/RunnableOnFinish;
.source "SaveDB.java"


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mDb:Lcom/keepassdroid/Database;

.field private mDontSave:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 0

    .line 46
    invoke-direct {p0, p3}, Lcom/keepassdroid/database/edit/RunnableOnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 48
    iput-object p2, p0, Lcom/keepassdroid/database/edit/SaveDB;->mDb:Lcom/keepassdroid/Database;

    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcom/keepassdroid/database/edit/SaveDB;->mDontSave:Z

    .line 50
    iput-object p1, p0, Lcom/keepassdroid/database/edit/SaveDB;->mCtx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/edit/OnFinish;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p3}, Lcom/keepassdroid/database/edit/RunnableOnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 40
    iput-object p2, p0, Lcom/keepassdroid/database/edit/SaveDB;->mDb:Lcom/keepassdroid/Database;

    .line 41
    iput-boolean p4, p0, Lcom/keepassdroid/database/edit/SaveDB;->mDontSave:Z

    .line 42
    iput-object p1, p0, Lcom/keepassdroid/database/edit/SaveDB;->mCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 56
    iget-boolean v0, p0, Lcom/keepassdroid/database/edit/SaveDB;->mDontSave:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/keepassdroid/database/edit/SaveDB;->mDb:Lcom/keepassdroid/Database;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/SaveDB;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/keepassdroid/Database;->SaveData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/keepassdroid/database/exception/FileUriException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/keepassdroid/database/exception/PwDbOutputException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    .line 63
    invoke-static {}, Lcom/keepassdroid/fragments/Android11WarningFragment;->showAndroid11WarningOnThisVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    new-instance v1, Lcom/keepassdroid/fragments/Android11WarningFragment;

    const v2, 0x7f100002

    invoke-direct {v1, v2}, Lcom/keepassdroid/fragments/Android11WarningFragment;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/SaveDB;->finish(ZLandroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/keepassdroid/database/exception/FileUriException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/SaveDB;->finish(ZLjava/lang/String;)V

    :goto_0
    return-void

    :catch_2
    move-exception v1

    .line 60
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/SaveDB;->finish(ZLjava/lang/String;)V

    return-void

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/edit/SaveDB;->finish(Z)V

    return-void
.end method
