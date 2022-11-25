.class public abstract Lcom/keepassdroid/LockCloseHideActivity;
.super Lcom/keepassdroid/LockCloseActivity;
.source "LockCloseHideActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/keepassdroid/LockCloseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-ge p1, v0, :cond_0

    const/16 v0, 0x9

    if-ge p1, v0, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/keepassdroid/LockCloseHideActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    return-void
.end method
