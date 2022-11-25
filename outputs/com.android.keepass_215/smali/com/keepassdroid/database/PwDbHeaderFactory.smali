.class public Lcom/keepassdroid/database/PwDbHeaderFactory;
.super Ljava/lang/Object;
.source "PwDbHeaderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/keepassdroid/database/PwDatabase;)Lcom/keepassdroid/database/PwDbHeader;
    .locals 1

    .line 24
    instance-of v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;

    if-eqz v0, :cond_0

    .line 25
    new-instance p0, Lcom/keepassdroid/database/PwDbHeaderV3;

    invoke-direct {p0}, Lcom/keepassdroid/database/PwDbHeaderV3;-><init>()V

    return-object p0

    .line 26
    :cond_0
    instance-of v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lcom/keepassdroid/database/PwDbHeaderV4;

    check-cast p0, Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, p0}, Lcom/keepassdroid/database/PwDbHeaderV4;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;)V

    return-object v0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
