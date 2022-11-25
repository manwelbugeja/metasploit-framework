.class public abstract Lcom/keepassdroid/LockCloseListActivity;
.super Lcom/keepassdroid/LockingActivity;
.source "LockCloseListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/keepassdroid/LockingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/keepassdroid/LockingActivity;->onResume()V

    .line 30
    invoke-static {p0}, Lcom/keepassdroid/timeout/TimeoutHelper;->checkShutdown(Landroid/app/Activity;)V

    return-void
.end method
