.class public Lcom/keepassdroid/GroupActivityV4;
.super Lcom/keepassdroid/GroupActivity;
.source "GroupActivityV4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/keepassdroid/GroupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected retrieveGroupId(Landroid/content/Intent;)Lcom/keepassdroid/database/PwGroupId;
    .locals 1

    const-string v0, "entry"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/keepassdroid/database/PwGroupIdV4;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/PwGroupIdV4;-><init>(Ljava/util/UUID;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected setupButtons()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/keepassdroid/GroupActivity;->setupButtons()V

    .line 45
    iget-boolean v0, p0, Lcom/keepassdroid/GroupActivityV4;->readOnly:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/keepassdroid/GroupActivityV4;->addEntryEnabled:Z

    return-void
.end method
