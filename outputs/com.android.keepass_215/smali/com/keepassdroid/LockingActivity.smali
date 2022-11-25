.class public abstract Lcom/keepassdroid/LockingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LockingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 0

    .line 30
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 32
    invoke-static {p0}, Lcom/keepassdroid/timeout/TimeoutHelper;->pause(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 37
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 39
    invoke-static {p0}, Lcom/keepassdroid/timeout/TimeoutHelper;->resume(Landroid/app/Activity;)V

    return-void
.end method
