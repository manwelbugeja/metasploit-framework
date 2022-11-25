.class public Lcom/keepassdroid/database/edit/FileOnFinish;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "FileOnFinish.java"


# instance fields
.field private mFilename:Landroid/net/Uri;

.field protected mOnFinish:Lcom/keepassdroid/database/edit/FileOnFinish;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/edit/FileOnFinish;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/keepassdroid/database/edit/FileOnFinish;->mFilename:Landroid/net/Uri;

    .line 31
    iput-object p1, p0, Lcom/keepassdroid/database/edit/FileOnFinish;->mOnFinish:Lcom/keepassdroid/database/edit/FileOnFinish;

    return-void
.end method


# virtual methods
.method public getFilename()Landroid/net/Uri;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/keepassdroid/database/edit/FileOnFinish;->mFilename:Landroid/net/Uri;

    return-object v0
.end method

.method public setFilename(Landroid/net/Uri;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/keepassdroid/database/edit/FileOnFinish;->mFilename:Landroid/net/Uri;

    return-void
.end method
