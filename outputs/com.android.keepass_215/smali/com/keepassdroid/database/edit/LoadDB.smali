.class public Lcom/keepassdroid/database/edit/LoadDB;
.super Lcom/keepassdroid/database/edit/RunnableOnFinish;
.source "LoadDB.java"


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mDb:Lcom/keepassdroid/Database;

.field private mKey:Landroid/net/Uri;

.field private mPass:Ljava/lang/String;

.field private mRememberKeyfile:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/Database;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 0

    .line 53
    invoke-direct {p0, p6}, Lcom/keepassdroid/database/edit/RunnableOnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 55
    iput-object p1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mDb:Lcom/keepassdroid/Database;

    .line 56
    iput-object p2, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/keepassdroid/database/edit/LoadDB;->mUri:Landroid/net/Uri;

    .line 58
    iput-object p4, p0, Lcom/keepassdroid/database/edit/LoadDB;->mPass:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/keepassdroid/database/edit/LoadDB;->mKey:Landroid/net/Uri;

    .line 61
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const p3, 0x7f1000b7

    .line 62
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f050005

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mRememberKeyfile:Z

    return-void
.end method

.method private saveFileData(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/keepassdroid/database/edit/LoadDB;->mRememberKeyfile:Z

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 122
    :cond_0
    invoke-static {}, Lcom/keepassdroid/app/App;->getFileHistory()Lcom/keepassdroid/fileselect/RecentFileHistory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/keepassdroid/fileselect/RecentFileHistory;->createFile(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mDb:Lcom/keepassdroid/Database;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/keepassdroid/database/edit/LoadDB;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/keepassdroid/database/edit/LoadDB;->mPass:Ljava/lang/String;

    iget-object v5, p0, Lcom/keepassdroid/database/edit/LoadDB;->mKey:Landroid/net/Uri;

    iget-object v6, p0, Lcom/keepassdroid/database/edit/LoadDB;->mStatus:Lcom/keepassdroid/UpdateStatus;

    invoke-virtual/range {v1 .. v6}, Lcom/keepassdroid/Database;->LoadData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/UpdateStatus;)V

    .line 70
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/LoadDB;->mKey:Landroid/net/Uri;

    invoke-direct {p0, v1, v2}, Lcom/keepassdroid/database/edit/LoadDB;->saveFileData(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/keepassdroid/database/exception/ArcFourException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lcom/keepassdroid/database/exception/InvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/keepassdroid/database/exception/ContentFileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/keepassdroid/database/exception/KeyFileEmptyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/keepassdroid/database/exception/InvalidAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/keepassdroid/database/exception/InvalidKeyFileException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/keepassdroid/database/exception/InvalidDBSignatureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/keepassdroid/database/exception/InvalidDBVersionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/keepassdroid/database/exception/InvalidDBException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/edit/LoadDB;->finish(Z)V

    return-void

    .line 110
    :catch_0
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f10007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    .line 107
    :catch_1
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f10007b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    .line 104
    :catch_2
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f10015c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    .line 101
    :catch_3
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f1000b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    .line 98
    :catch_4
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f1000b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    .line 95
    :catch_5
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f1000b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    .line 92
    :catch_6
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f1000b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    :catch_7
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    :catch_8
    nop

    .line 82
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/keepassdroid/fragments/Android11WarningFragment;->showAndroid11Warning(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Lcom/keepassdroid/fragments/Android11WarningFragment;

    invoke-direct {v1}, Lcom/keepassdroid/fragments/Android11WarningFragment;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLandroidx/fragment/app/DialogFragment;)V

    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f100004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    .line 79
    :catch_9
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f10008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    .line 76
    :catch_a
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f100005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void

    .line 73
    :catch_b
    iget-object v1, p0, Lcom/keepassdroid/database/edit/LoadDB;->mCtx:Landroid/content/Context;

    const v2, 0x7f100073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/edit/LoadDB;->finish(ZLjava/lang/String;)V

    return-void
.end method
