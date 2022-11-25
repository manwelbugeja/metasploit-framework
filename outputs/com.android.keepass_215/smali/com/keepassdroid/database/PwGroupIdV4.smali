.class public Lcom/keepassdroid/database/PwGroupIdV4;
.super Lcom/keepassdroid/database/PwGroupId;
.source "PwGroupIdV4.java"


# instance fields
.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/keepassdroid/database/PwGroupId;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupIdV4;->uuid:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 14
    instance-of v0, p1, Lcom/keepassdroid/database/PwGroupIdV4;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_0
    check-cast p1, Lcom/keepassdroid/database/PwGroupIdV4;

    .line 20
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupIdV4;->uuid:Ljava/util/UUID;

    iget-object p1, p1, Lcom/keepassdroid/database/PwGroupIdV4;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupIdV4;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupIdV4;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method
