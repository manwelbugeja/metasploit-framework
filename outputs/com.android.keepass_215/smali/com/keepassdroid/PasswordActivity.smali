.class public Lcom/keepassdroid/PasswordActivity;
.super Lcom/keepassdroid/LockingActivity;
.source "PasswordActivity.java"


# static fields
.field public static final KEY_DEFAULT_FILENAME:Ljava/lang/String; = "defaultFileName"

.field public static final KEY_FILENAME:Ljava/lang/String; = "fileName"

.field public static final KEY_KEYFILE:Ljava/lang/String; = "keyFile"

.field private static final READ_WRITE_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lcom/keepassdroid/PasswordActivity;->READ_WRITE_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/keepassdroid/LockingActivity;-><init>()V

    return-void
.end method

.method public static Launch(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, ""

    .line 54
    invoke-static {p0, p1, v0}, Lcom/keepassdroid/PasswordActivity;->Launch(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Launch(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 61
    invoke-static {p1}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-static {p1}, Lcom/keepassdroid/utils/UriUtil;->parseDefaultFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0

    .line 75
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/PasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fileName"

    .line 76
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "keyFile"

    .line 77
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 62
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/keepassdroid/LockingActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c007b

    .line 86
    invoke-virtual {p0, p1}, Lcom/keepassdroid/PasswordActivity;->setContentView(I)V

    const p1, 0x7f090225

    .line 88
    invoke-virtual {p0, p1}, Lcom/keepassdroid/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 89
    invoke-virtual {p0, p1}, Lcom/keepassdroid/PasswordActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method
