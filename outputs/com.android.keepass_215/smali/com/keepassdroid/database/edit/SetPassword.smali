.class public Lcom/keepassdroid/database/edit/SetPassword;
.super Lcom/keepassdroid/database/edit/RunnableOnFinish;
.source "SetPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/edit/SetPassword$AfterSave;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private mDb:Lcom/keepassdroid/Database;

.field private mDontSave:Z

.field private mKeyfile:Landroid/net/Uri;

.field private mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keepassdroid/Database;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 44
    invoke-direct/range {v0 .. v6}, Lcom/keepassdroid/database/edit/SetPassword;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/database/edit/OnFinish;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keepassdroid/Database;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/database/edit/OnFinish;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p5}, Lcom/keepassdroid/database/edit/RunnableOnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 51
    iput-object p2, p0, Lcom/keepassdroid/database/edit/SetPassword;->mDb:Lcom/keepassdroid/Database;

    .line 52
    iput-object p3, p0, Lcom/keepassdroid/database/edit/SetPassword;->mPassword:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/keepassdroid/database/edit/SetPassword;->mKeyfile:Landroid/net/Uri;

    .line 54
    iput-boolean p6, p0, Lcom/keepassdroid/database/edit/SetPassword;->mDontSave:Z

    .line 55
    iput-object p1, p0, Lcom/keepassdroid/database/edit/SetPassword;->ctx:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/database/edit/SetPassword;)Lcom/keepassdroid/Database;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/keepassdroid/database/edit/SetPassword;->mDb:Lcom/keepassdroid/Database;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keepassdroid/database/edit/SetPassword;[B)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/edit/SetPassword;->erase([B)V

    return-void
.end method

.method private erase([B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 124
    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/keepassdroid/database/edit/SetPassword;->mDb:Lcom/keepassdroid/Database;

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    .line 72
    iget-object v1, v0, Lcom/keepassdroid/database/PwDatabase;->masterKey:[B

    array-length v1, v1

    new-array v2, v1, [B

    .line 73
    iget-object v3, v0, Lcom/keepassdroid/database/PwDatabase;->masterKey:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/keepassdroid/database/edit/SetPassword;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/keepassdroid/database/edit/SetPassword;->mKeyfile:Landroid/net/Uri;

    invoke-static {v1, v3}, Lcom/keepassdroid/utils/UriUtil;->getUriInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 78
    iget-object v3, p0, Lcom/keepassdroid/database/edit/SetPassword;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/keepassdroid/database/PwDatabase;->setMasterKey(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/keepassdroid/database/exception/InvalidKeyFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    new-instance v0, Lcom/keepassdroid/database/edit/SetPassword$AfterSave;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/SetPassword;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    invoke-direct {v0, p0, v2, v1}, Lcom/keepassdroid/database/edit/SetPassword$AfterSave;-><init>(Lcom/keepassdroid/database/edit/SetPassword;[BLcom/keepassdroid/database/edit/OnFinish;)V

    iput-object v0, p0, Lcom/keepassdroid/database/edit/SetPassword;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    .line 91
    new-instance v0, Lcom/keepassdroid/database/edit/SaveDB;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/SetPassword;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/SetPassword;->mDb:Lcom/keepassdroid/Database;

    iget-object v3, p0, Lcom/keepassdroid/database/edit/SetPassword;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    iget-boolean v4, p0, Lcom/keepassdroid/database/edit/SetPassword;->mDontSave:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keepassdroid/database/edit/SaveDB;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/edit/OnFinish;Z)V

    .line 92
    invoke-virtual {v0}, Lcom/keepassdroid/database/edit/SaveDB;->run()V

    return-void

    :catch_0
    move-exception v0

    .line 84
    invoke-direct {p0, v2}, Lcom/keepassdroid/database/edit/SetPassword;->erase([B)V

    .line 85
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/keepassdroid/database/edit/SetPassword;->finish(ZLjava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 80
    invoke-direct {p0, v2}, Lcom/keepassdroid/database/edit/SetPassword;->erase([B)V

    .line 81
    invoke-virtual {v0}, Lcom/keepassdroid/database/exception/InvalidKeyFileException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/keepassdroid/database/edit/SetPassword;->finish(ZLjava/lang/String;)V

    return-void
.end method

.method public validatePassword(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/keepassdroid/database/edit/SetPassword;->mDb:Lcom/keepassdroid/Database;

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/SetPassword;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwDatabase;->validatePasswordEncoding(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper;

    invoke-direct {v0}, Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper;-><init>()V

    .line 61
    invoke-virtual {v0, p1, p2, v1}, Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper;->show(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method
