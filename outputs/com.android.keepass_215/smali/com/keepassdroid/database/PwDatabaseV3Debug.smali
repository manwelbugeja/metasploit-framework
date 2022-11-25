.class public Lcom/keepassdroid/database/PwDatabaseV3Debug;
.super Lcom/keepassdroid/database/PwDatabaseV3;
.source "PwDatabaseV3Debug.java"


# instance fields
.field public dbHeader:Lcom/keepassdroid/database/PwDbHeaderV3;

.field public postHeader:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/keepassdroid/database/PwDatabaseV3;-><init>()V

    return-void
.end method


# virtual methods
.method public copyEncrypted([BII)V
    .locals 2

    .line 28
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3Debug;->postHeader:[B

    const/4 v1, 0x0

    .line 29
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyHeader(Lcom/keepassdroid/database/PwDbHeaderV3;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV3Debug;->dbHeader:Lcom/keepassdroid/database/PwDbHeaderV3;

    return-void
.end method
