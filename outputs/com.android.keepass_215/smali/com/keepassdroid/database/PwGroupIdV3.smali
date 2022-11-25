.class public Lcom/keepassdroid/database/PwGroupIdV3;
.super Lcom/keepassdroid/database/PwGroupId;
.source "PwGroupIdV3.java"


# instance fields
.field private id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/keepassdroid/database/PwGroupId;-><init>()V

    .line 27
    iput p1, p0, Lcom/keepassdroid/database/PwGroupIdV3;->id:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 32
    instance-of v0, p1, Lcom/keepassdroid/database/PwGroupIdV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 36
    :cond_0
    check-cast p1, Lcom/keepassdroid/database/PwGroupIdV3;

    .line 37
    iget v0, p0, Lcom/keepassdroid/database/PwGroupIdV3;->id:I

    iget p1, p1, Lcom/keepassdroid/database/PwGroupIdV3;->id:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getId()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/keepassdroid/database/PwGroupIdV3;->id:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/keepassdroid/database/PwGroupIdV3;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method
