.class public Lcom/keepassdroid/GroupActivityV3;
.super Lcom/keepassdroid/GroupActivity;
.source "GroupActivityV3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/keepassdroid/GroupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic retrieveGroupId(Landroid/content/Intent;)Lcom/keepassdroid/database/PwGroupId;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivityV3;->retrieveGroupId(Landroid/content/Intent;)Lcom/keepassdroid/database/PwGroupIdV3;

    move-result-object p1

    return-object p1
.end method

.method protected retrieveGroupId(Landroid/content/Intent;)Lcom/keepassdroid/database/PwGroupIdV3;
    .locals 2

    const-string v0, "entry"

    const/4 v1, -0x1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 36
    :cond_0
    new-instance v0, Lcom/keepassdroid/database/PwGroupIdV3;

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/PwGroupIdV3;-><init>(I)V

    return-object v0
.end method

.method protected setupButtons()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/keepassdroid/GroupActivity;->setupButtons()V

    .line 42
    iget-boolean v0, p0, Lcom/keepassdroid/GroupActivityV3;->isRoot:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/keepassdroid/GroupActivityV3;->readOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/keepassdroid/GroupActivityV3;->addEntryEnabled:Z

    return-void
.end method
