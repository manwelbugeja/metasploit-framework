.class public Lcom/android/keepass/KeePass;
.super Landroid/app/Activity;
.source "KeePass.java"


# static fields
.field public static final EXIT_LOCK:I = 0x1

.field public static final EXIT_NORMAL:I = 0x0

.field public static final EXIT_REFRESH:I = 0x2

.field public static final EXIT_REFRESH_TITLE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startFileSelect()V
    .locals 2

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/android/keepass/KeePass;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/keepass/KeePass;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 43
    invoke-direct {p0}, Lcom/android/keepass/KeePass;->startFileSelect()V

    return-void
.end method
