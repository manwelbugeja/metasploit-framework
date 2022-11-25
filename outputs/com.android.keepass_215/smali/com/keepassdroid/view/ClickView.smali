.class public abstract Lcom/keepassdroid/view/ClickView;
.super Landroid/widget/LinearLayout;
.source "ClickView.java"


# instance fields
.field protected readOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/keepassdroid/view/ClickView;->readOnly:Z

    .line 36
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p1

    iget-boolean p1, p1, Lcom/keepassdroid/Database;->readOnly:Z

    iput-boolean p1, p0, Lcom/keepassdroid/view/ClickView;->readOnly:Z

    return-void
.end method


# virtual methods
.method public abstract onClick()V
.end method

.method public abstract onContextItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onCreateMenu(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end method
