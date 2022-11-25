.class public Lcom/keepassdroid/CancelDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "CancelDialog.java"


# instance fields
.field private mCanceled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/keepassdroid/CancelDialog;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->cancel()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/keepassdroid/CancelDialog;->mCanceled:Z

    return-void
.end method

.method public canceled()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/keepassdroid/CancelDialog;->mCanceled:Z

    return v0
.end method
